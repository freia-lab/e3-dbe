#!../../bin/linux-x86_64/dbe-sample
#+======================================================================
# $HeadURL: https://svnpub.iter.org/codac/iter/codac/dev/units/m-epics-iter-templates/tags/CODAC-CORE-4.1.0/templates/genericBoot/ioc/st.cmd $
# $Id: st.cmd 35402 2013-04-07 15:41:49Z zagara $
#
# Project       : CODAC Core System
#
# Description   : ITER ioc template EPICS start up file
#
# Author(s)     : This file was generated by CODAC development toolkit
#
# Copyright (c) : 2010-2013 ITER Organization,
#                 CS 90 046
#                 13067 St. Paul-lez-Durance Cedex
#                 France
#
# This file is part of ITER CODAC software.
# For the terms and conditions of redistribution or use of this software
# refer to the file ITER-LICENSE.TXT located in the top level directory
# of the distribution package.
#
#-======================================================================

< envPaths
< envSystem
< envUser

cd "${TOP}"

#############################################
## Register all support components         ##
#############################################

dbLoadDatabase "dbd/dbe-sample.dbd"
dbe_sample_registerRecordDeviceDriver pdbbase

< "${TOP}/iocBoot/iocdbe-sample/sddPreDriverConf.cmd"
< "${TOP}/iocBoot/iocdbe-sample/userPreDriverConf.cmd"
< "${TOP}/iocBoot/iocdbe-sample/threadSchedulingConf.cmd"
< "${TOP}/iocBoot/iocdbe-sample/dbToLoad.cmd"
< "${TOP}/iocBoot/iocdbe-sample/iocdbe-sample-preSaveRestore.cmd"

#############################################
## IOC Logging                             ##
#############################################
iocLogInit

#############################################
## IOC initialization                      ##
#############################################
cd "${TOP}/db"
iocInit

< "${TOP}/iocBoot/iocdbe-sample/iocdbe-sample-postSaveRestore.cmd"
< "${TOP}/iocBoot/iocdbe-sample/sddSeqToLoad.cmd"
< "${TOP}/iocBoot/iocdbe-sample/seqToLoad.cmd"
< "${TOP}/iocBoot/iocdbe-sample/sddPostDriverConf.cmd"
< "${TOP}/iocBoot/iocdbe-sample/userPostDriverConf.cmd"

