/*!
 ******************************************************************************
 **  External ROS Node for simple communication with CarMaker
 **  
 **  Copyright (C)   IPG Automotive GmbH
 **                  Bannwaldallee 60             Phone  +49.721.98520.0
 **                  76185 Karlsruhe              Fax    +49.721.98520.99
 **                  Germany                      WWW    www.ipg-automotive.com
 ******************************************************************************
 *
 * Description:
 * - Prototype/Proof of Concept
 * - Unsupported ROS Example with CarMaker
 * - Structure may change in future!
 * - This ROS Node is independent from CarMaker libraries
 * - Basic communication without hard synchronization on CarMaker side
 *   -> For an example with synchronization see "desraccel"
 *
 * ToDo:
 * - C++!
 * - ROS naming/way/namespaces
 * - Synchronization in this example (currently only desraccel)
 * - ...
 *
 */


#include <cmrosutils/CMRosUtils.h>    /* Node independent templates, headers, ... */
#include <hellocm/ROS1_HelloCM.h>



/* NDEBUG is set in CarMaker Makefile/MakeDefs in OPT_CFLAGS */
#if !defined NDEBUG
#  warning "Debug options are enabled!"
#  define DBLOG LOG
#else
#  define DBLOG(...)
#endif


#if 0
# define LOG(frmt, ...)  printf(frmt "\n", ##__VA_ARGS__)
#else
# define LOG ROS_INFO
#endif


/*!< Global struct for this Node */
static struct {
    unsigned long CycleNo;     /*!< Current cycle number for algorithm */
    int           CycleTime;   /*!< Expected cycle time in milliseconds of external ROS Node.
                                    - Might be used for synchronization (under development)
                                    - e.g. usage in combination of published message */
    double        SynthDelay;  /*!< Synthetic delay in seconds to check Sync */

    struct {
	/*!< Cyclic log to terminal independent from simulation time */
	ros::WallTimer WallTimer;

	/*!< Cyclic log to terminal dependent on simulation time ("/clock" topic) */
	ros::Timer     PubTimer;
    } Timer;

    struct {
	struct {
	    tRosIF_TpcSub<hellocm_msgs::CM2Ext>  CM2Ext;
	} Sub; /*!< Topics to be subscribed */

	struct {
	    tRosIF_TpcPub<hellocm_msgs::Ext2CM>  Ext2CM;
	} Pub; /*!< Topics to be published */
    } Topics; /*!< ROS Topics used by this Node */

    struct {
	/*!< Initialization/Preparation of this ROS Node e.g. when simulation starts */
	tRosIF_Srv<hellocm_msgs::Init>      Init;
    } Services; /*!< ROS Services used by this Node */

    tRosIF_Cfg    Cfg;

} RosIF;



/*!
 * Description:
 * - Called when service is triggered
 * - e.g. before CarMaker TestRun starts to re-init this node
 *
 */
static bool
ros_HelloCM_CB_SrvInit(hellocm_msgs::Init::Request &req,
	hellocm_msgs::Init::Response &resp)
{
    int rv;
    char sbuf[256];
    ros::NodeHandlePtr node = RosIF.Cfg.Node;

    LOG("%s: Service 'Init' was triggered", ros::this_node::getName().c_str());

    /* Reset variables */
    RosIF.CycleNo    = 0;
    RosIF.SynthDelay = 0.0;


    /*
     * Check if parameter has changed!
     *  ToDo:
     * - http://wiki.ros.org/roscpp/Overview/Parameter%20Server
     *   - cached parameter?
     * - Create own function in ROS_Utils.h
     * - Changing parameter this way only experimental
     * - Update e.g. via CarMaker TestAutomation or "rosparam" in terminal
     */
    strcpy(sbuf, hellocm::prm_cycletime_name.c_str());

    if ((rv = node->hasParam(sbuf)) == true) {
	node->getParam(sbuf, rv);

	if (RosIF.CycleTime != rv){
	    RosIF.CycleTime = rv;
	    LOG("  -> Update param '%s' to '%d'", sbuf, RosIF.CycleTime);
	    RosIF.Timer.PubTimer.setPeriod(ros::Duration(RosIF.CycleTime/1000.0), true);
	}
    }

    resp.success   = 1;
    resp.cycletime = RosIF.CycleTime; /* ToDo: remove this? only use ROS parameter mechanism? */
    return true;
}



/*!
 * Description:
 * - Do something when external message arrives
 * - Called when external message is processed
 *
 */
static void
ros_HelloCM_CB_TpcIn(const hellocm_msgs::CM2Ext::ConstPtr &msg)
{
    /* Update variables
     * - ToDo: mutex?
     */
    RosIF.SynthDelay = msg->synthdelay;

    LOG("%s - TpcIn (ROS Time=%.3fs): CarMaker Node is in cycle %lu, Time=%.3fs, Stamp=%.3fs, SeqID=%d",
	    ros::this_node::getName().c_str(), ros::Time::now().toSec(),
	    msg->cycleno, msg->time.toSec(), msg->header.stamp.toSec(), msg->header.seq);
}



/*!
 * Description:
 * - This callback is expected to be called by a default ROS Timer
 * - The callback depends on ROS Time (system time or "simulation" time)
 * - Dependent on "use_sim_time" parameter and /clock Topic
 * - e.g. initialized via "<Node Handle>->createTimer"
 *
 */
static void
ros_HelloCM_CB_PubTimer(const ros::TimerEvent& Event) {

    ros::WallTime wtime;
    auto out = &RosIF.Topics.Pub.Ext2CM;
    double delay;

    out->Msg.cycleno = ++RosIF.CycleNo;
    out->Msg.time    = ros::Time::now();

    /* Header stamp and frame needs to be set manually! */
    /* provide system time close to data is sent */
    wtime = ros::WallTime::now();
    out->Msg.header.stamp.sec  = wtime.sec;
    out->Msg.header.stamp.nsec = wtime.nsec;

    /* Synthetic delay to demonstrate effect of synchronization
     * - ToDo: mutex?
     */
    delay = RosIF.SynthDelay;

    if (delay > 1e-9)
            ros::WallDuration(delay).sleep();

    /* Publish the message */
    out->Pub.publish(out->Msg);

    LOG("%s - PubTimer (ROS Time=%.3fs): This Node is in cycle %lu, Time=%.3fs, Stamp=%.3fs",
	    ros::this_node::getName().c_str(), ros::Time::now().toSec(),
	    out->Msg.cycleno, out->Msg.time.toSec(), out->Msg.header.stamp.toSec());
}



/*!
 * Description:
 * - This callback is expected to be called by a WallTimer
 * - The callback depends on system time
 * - e.g. initialized via "<Node Handle>->createWallTimer"
 *
 */
static void
ros_HelloCM_CB_WallTimer(const ros::WallTimerEvent& Event) {

    LOG("%s: I am Alive!", ros::this_node::getName().c_str());
}



/*!
 * Description:
 * - Basic initialization of this ROS Node
 * - Initialize Services, Topics, Timers, ...
 *
 */
static int
ros_HelloCM_Init(int Argc, char **Argv) {

    char sbuf[256];
    int  rv  = 0;    
    bool rvb = false;
    ros::V_string names;

    /* Name might be different after remapping! */
    LOG("Initialize ROS Node '%s'", hellocm::node_name.c_str());

    /* ROS initialization. Name of Node might be different after remapping! */
    ros::init(Argc, Argv, hellocm::node_name);


    /* Node specific */
    RosIF.Cfg.Node = ros::NodeHandlePtr(new ros::NodeHandle); /* ToDo: */
    ros::NodeHandlePtr node = RosIF.Cfg.Node;


    /* Publish specific */
    LOG("  -> Publish '%s'", hellocm::tpc_out_name.c_str());
    RosIF.Topics.Pub.Ext2CM.Pub = node->advertise<hellocm_msgs::Ext2CM>(hellocm::tpc_out_name, 10);


    /* Subscribe specific */
    LOG("  -> Subscribe '%s'", hellocm::tpc_in_name.c_str());
    RosIF.Topics.Sub.CM2Ext.Sub = node->subscribe(hellocm::tpc_in_name, 10, ros_HelloCM_CB_TpcIn);


    /* Services */
    LOG("  -> Create Service '%s'", hellocm::srv_init_name.c_str());
    RosIF.Services.Init.Srv = node->advertiseService(
	    hellocm::srv_init_name, ros_HelloCM_CB_SrvInit);


    /* Parameter specific */
    /* ToDo:
     * - Parameter must be set in all external nodes?
     *   -> currently setting in CM seems to be sufficient! */
    strcpy(sbuf, "/use_sim_time");

    /* ToDo:
       - getParam seems to return 0 even the value was received
     */
    if ((rv = node->hasParam(sbuf)) == true && node->getParam(sbuf, rvb) == true) {
	node->getParam(sbuf, rvb);
	LOG("  -> Has param '%s' with value '%d'", sbuf, rvb);
    } else {
	LOG("  -> No param '%s' is set", sbuf);
	rvb = false;
    }

    if (rvb == true)
	LOG("  -> Use time provided by Clock Server!");
    else
	LOG("  -> Use system time!");

    /*
     * Use cached parameters?
     * - http://wiki.ros.org/roscpp/Overview/Parameter%20Server
     * - should be used rarely to avoid overloading the master
     */
    strcpy(sbuf, hellocm::prm_cycletime_name.c_str());
    if ((rv = node->hasParam(sbuf)) == true) {

	/* May be set by other node or exe arguments */
	node->getParam(sbuf, rv);
	LOG("  -> Has param '%s' with value '%d'", sbuf, rv);
	RosIF.CycleTime = rv;
    } else {

	/* Create parameter available for other nodes */
	RosIF.CycleTime = 10000;
	LOG("  -> No param '%s' was set! Use default cycle time!", sbuf);
	node->setParam(sbuf, RosIF.CycleTime);
    }

    LOG("  -> Cycle time = %dms", RosIF.CycleTime);


    /* Timer specific */
    RosIF.Timer.WallTimer = node->createWallTimer(ros::WallDuration(10.0),           ros_HelloCM_CB_WallTimer);
    RosIF.Timer.PubTimer  = node->createTimer(ros::Duration(RosIF.CycleTime/1000.0), ros_HelloCM_CB_PubTimer);


    /* Print general information after everything is done */
    LOG("Initialization of ROS Node finished!");
    LOG("  -> Node Name = '%s'", ros::this_node::getName().c_str());
    LOG("  -> Namespace = '%s'", ros::this_node::getNamespace().c_str());


    /* Advertised Topics */
    ros::this_node::getAdvertisedTopics(names);
    LOG("  -> Advertised Topics (%lu)", names.size());

    auto it = names.begin();
    for (; it != names.end(); ++it)
	LOG("    -> %s", (*it).c_str());


    /* Subscribed Topics */
    names.clear();
    ros::this_node::getSubscribedTopics(names);
    LOG("  -> Subscribed Topics (%lu)", names.size());
    it = names.begin();
    for (; it != names.end(); ++it)
	LOG("    -> %s",  (*it).c_str());

    return 0;
}


/*!
 * Description:
 * -This ROS Node is a standalone executable!
 *
 */
int main(int argc, char *argv[])
{

    ros_HelloCM_Init(argc, argv);

    LOG("%s -> Start spinning...", ros::this_node::getName().c_str());
    ros::spin();

    LOG("%s -> Shutdown", ros::this_node::getName().c_str());

    return 0;
}
