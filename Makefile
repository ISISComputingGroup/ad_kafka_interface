#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG

# exclude Visual Studio before 2015 (in our case just 10.0)
VS_OK=1
ifneq ($(findstring 10.0,$(VCVERSION)),)
VS_OK=0
endif

ifeq ($(VS_OK),1)
DIRS := $(DIRS) $(filter-out $(DIRS), configure)
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *App))
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard AD*))
endif

include $(TOP)/configure/RULES_TOP
