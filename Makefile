#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := KaRadio32
PROJECT_VER = "2.4.0.0"

COMPONENT_ADD_INCLUDEDIRS := components/include

include $(IDF_PATH)/make/project.mk

# Copy some defaults into the sdkconfig by default
# so BT stack is enabled
sdkconfig: sdkconfig.defaults
	$(Q) cp $< $@

menuconfig: sdkconfig
defconfig: sdkconfig
