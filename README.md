# initcl
Initialize Visual Studio C++ environment variables by locating the latest vcvarsall.bat  

Put `initcl.bat` file in your `PATH`.  
In a command line, type the following command: `initcl`  
This will initialize the console to be able to call `cl.exe` with the latest available Visual Studio version.  
If you call `initcl` twice, it will ignore the second time.  
If the console was already initialized by other means, then it will not be initialized again, because it is looking if `%VSINSTALLDIR%` is defined.  
