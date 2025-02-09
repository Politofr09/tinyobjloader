project "tinyobjloader"
   kind "ConsoleApp"
   language "C++"
   files { 
      "tiny_obj_loader.cc",
      "tiny_obj_loader.h",
   }

	targetdir ("bin/%{cfg.buildcfg}")
	objdir ("bin-obj/%{cfg.buildcfg}")

   configuration "Debug"
      defines { "DEBUG" }
      flags { "Symbols" }

   configuration "Release"
      -- defines { "NDEBUG" }
      flags { "Symbols", "Optimize" }
