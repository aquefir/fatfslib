###############################################################################
##                File Allocation Table File Systems Library.                ##
##                                                                           ##
##                        Copyright (C) 2022 Aquefir.                        ##
##                        Released under BSD-2-Clause                        ##
###############################################################################

ifeq ($(strip $(AQ)),)
$(error "AQ was not found in your environment. You need to install the Slick Makefiles from github.com/aquefir/slick to continue.")
endif

include $(AQ)/lib/slick/base.mk

# name of project. used in output binary naming
PROJECT := fatfs

# put a ‘1’ for the desired target types to compile
EXEFILE :=
SOFILE  :=
AFILE   := 1

# space-separated path list for #includes
# <system> includes
INCLUDES := include
# "local" includes
INCLUDEL := src

# space-separated library name list
LIBS    :=
LIBDIRS :=

# sources
CFILES    :=
PUBHFILES := \
	include/fatfs/exfat.h \
	include/fatfs/fat8.h \
	include/fatfs/fat12.h \
	include/fatfs/fat16.h \
	include/fatfs/fat32.h \
	include/fatfs/fatx.h \
	include/fatfs/turbofat.h \
	include/fatfs/vfat.h
PRVHFILES :=

# this defines all our usual targets
include $(AQ)/lib/slick/targets.mk
