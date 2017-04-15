TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE

INC += KafkaPlugin.h
INC += NDArraySerializer.h
INC += KafkaProducer.h
INC += ParamUtility.h
INC += json.h
INC += NDArray_schema_generated.h
LIBRARY_IOC += ADPluginKafka
LIB_SRCS += KafkaPlugin.cpp
LIB_SRCS += KafkaProducer.cpp
LIB_SRCS += NDArraySerializer.cpp
LIB_SRCS += jsoncpp.cpp

DBD += ADPluginKafka.dbd

LIB_LIBS += rdkafka++
LIB_LIBS += rdkafka

USR_CSSFLASG += -I$(FLATBUFFERS)

USR_CXXFLAGS_Linux += -std=c++11
USR_CXXFLAGS += -I${AREA_DETECTOR}/ADCore/include

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE

