/*
 ******************************************************************************
 **  External ROS Node with ACC for CarMaker
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
 */

#ifndef ROS1_HELLOCM_H_
#define ROS1_HELLOCM_H_

#ifdef __cplusplus

#include <hellocm_msgs/Ext2CM.h>
#include <hellocm_msgs/CM2Ext.h>
#include <hellocm_msgs/Init.h>

namespace hellocm
{
    /* Can be used for initialization.
     * - Consider ROS remapping arguments, ROS_NAMESPACE environment variable, ...! */
    const std::string node_name         =  "hellocm";                     /*!< Default name of this ROS Node */
    const std::string node_version      =  "0.8.0";                       /*!< String version of this interface
                                                                               - e.g. <Major>.<Minor>.<Patch> */
    const int node_numver               =  800;                           /*!< Numerical version of this interface
                                                                               - e.g. <nDigitsMajor><2DigitsMinor><2DigitsPatch> */

    /* Topics */
    const std::string tpc_in_name       =  node_name + "/cm2ext";            /*!< Default name of Topic into this ROS Node */
    const std::string tpc_out_name      =  node_name + "/ext2cm";            /*!< Default name of Topic from this ROS Node */

    /* Services */
    const std::string srv_init_name     =  node_name + "/init";           /*!< Default name of service provided by this ROS Node */
    const std::string srv_docycle_name  =  node_name + "/docycle";        /*!< Default name of service provided by this ROS Node */
    const std::string srv_shutdown_name =  node_name + "/shutdown";       /*!< Default name of service provided by this ROS Node */

    /* Parameters */
    const std::string prm_cycletime_name     =  node_name + "/cycletime";     /*!< Cycle Time parameter (e.g. for sync) */
    const std::string prm_cycleoffset_name   =  node_name + "/cycleoffset";   /*!< Cycle Time Offset parameter (e.g. for sync) */
    const std::string prm_cycletimein_name   =  node_name + "/cycletimein";   /*!< Cycle Time parameter */
    const std::string prm_cycleoffsetin_name =  node_name + "/cycleoffsetin"; /*!< Cycle Time Offset parameter */
}

#else
// C-Interface relevant? Only ROS2?
#endif


#endif /* ROS1_HELLOCM_H_ */
