project "tinyobjloader"
   kind "StaticLib"
   language "C++"
   files { 
      "tiny_obj_loader.cc",
      "tiny_obj_loader.h",
   }

	targetdir ("bin/%{cfg.buildcfg}")
	objdir ("bin-obj/%{cfg.buildcfg}")

   filter "configurations:Debug"
      defines { "DEBUG" }
      
      symbols "On"
      optimize "Off"
      runtime "Debug"

   filter "configurations:Release"
      symbols "Off"
      optimize "On"
      runtime "Release"

   filter ""