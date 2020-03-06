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
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *app))
ifeq ($(BUILD_IOCS), YES)
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocs))
iocs_DEPEND_DIRS += ADKafkaApp
iocs_DEPEND_DIRS += ADPluginKafkaApp
endif
endif
include $(TOP)/configure/RULES_TOP

uninstall: uninstall_iocs
uninstall_iocs:
	$(MAKE) -C iocs uninstall
.PHONY: uninstall uninstall_iocs

realuninstall: realuninstall_iocs
realuninstall_iocs:
	$(MAKE) -C iocs realuninstall
.PHONY: realuninstall realuninstall_iocs
