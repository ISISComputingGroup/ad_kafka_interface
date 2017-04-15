TOP = ../../../extensions/master
include $(TOP)/configure/CONFIG

# exclude Visual Studio before 2015 (which is 14.0 - there is no 13.0)
VS_OK=1
ifneq ($(findstring 10.0,$(VCVERSION)),)
VS_OK=0
endif
ifneq ($(findstring 11.0,$(VCVERSION)),)
VS_OK=0
endif
ifneq ($(findstring 12.0,$(VCVERSION)),)
VS_OK=0
endif
ifeq ($(VS_OK),1)
DIRS := m-epics-ADKafka m-epics-ADPluginKafka
endif

include $(TOP)/configure/RULES_DIRS_INT
