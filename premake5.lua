project "yaml"
   kind "StaticLib"
   staticruntime "on"
   language "C++"
   cppdialect "C++17"
   targetdir ("bin/" .. outputdir)
   objdir ("Intermediate/" .. outputdir)
   

   files 
   { 
	files
	{
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	includedirs
	{
		"include"
	}
   }

   filter "system:windows"
      systemversion "latest"
   
   filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

   filter "configurations:Release"
        runtime "Release"
        optimize "on"

