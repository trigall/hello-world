workspace "HelloWorld"
	configuration{ "Debug", "Release"}
	
project "Helloworld"
	location "HelloWorld"
	kind "ConsoleApp"
	language "C++"
	targetdir 'bin/%{cfg.buildcfg}"
	
	files { "HelloWorld/src/**.h", "HelloWorld/src/**.cpp"}
	
	filter "configuration:Debug"
		defines { "DEBUG" }
		symbols "On"
		
	filter "configuration:Release"
		defines { "NDEBUG" }
		optimize "On"
		
