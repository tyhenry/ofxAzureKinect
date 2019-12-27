# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file 
# system
# 
# The PG can be used to detect errors in this file, just create a new project with this addon 
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxAzureKinect
	ADDON_DESCRIPTION = Use Azure Kinect inside openFrameworks.
	ADDON_AUTHOR = Elie Zananiri
	ADDON_TAGS = "computer vision" "3D sensing" "kinect"
	ADDON_URL = https://github.com/prisonerjohn/ofxAzureKinect

common:
	# dependencies with other addons, a list of them separated by spaces 
	# or use += in several lines
	# ADDON_DEPENDENCIES =
	
	# include search paths, this will be usually parsed from the file system
	# but if the addon or addon libraries need special search paths they can be
	# specified here separated by spaces or one per line using +=
	# ADDON_INCLUDES =
	
	# any special flag that should be passed to the compiler when using this
	# addon
	# ADDON_CFLAGS =
	
	# any special flag that should be passed to the linker when using this
	# addon, also used for system libraries with -lname
	# ADDON_LDFLAGS =
	
	# linux only, any library that should be included in the project using
	# pkg-config
	# ADDON_PKG_CONFIG_LIBRARIES =
	
	# osx/iOS only, any framework that should be included in the project
	# ADDON_FRAMEWORKS =
	
	# source files, these will be usually parsed from the file system looking
	# in the src folders in libs and the root of the addon. if your addon needs
	# to include files in different places or a different set of files per platform
	# they can be specified here
	# ADDON_SOURCES =
	
	# some addons need resources to be copied to the bin/data folder of the project
	# specify here any files that need to be copied, you can use wildcards like * and ?
	# ADDON_DATA = 
	
	# when parsing the file system looking for libraries exclude this for all or
	# a specific platform
	# ADDON_LIBS_EXCLUDE =

vs:
	ADDON_INCLUDES += $(AZUREKINECT_SDK)\sdk\include
	ADDON_INCLUDES += $(AZUREKINECT_BODY_SDK)\sdk\include
	ADDON_LIBS += $(AZUREKINECT_SDK)\sdk\windows-desktop\amd64\release\lib\k4a.lib
	ADDON_LIBS += $(AZUREKINECT_BODY_SDK)\sdk\windows-desktop\amd64\release\lib\  
	# k4abt.lib
	
linux64: 
	
linux:

linuxarmv6l:
	#TODO needs EngineGLFW.cpp exclude 

	
linuxarmv7l:
	#TODO needs EngineGLFW.cpp exclude 
	
msys2:

android/armeabi:	
	
android/armeabi-v7a:	

ios:
	# osx/iOS only, any framework that should be included in the project


