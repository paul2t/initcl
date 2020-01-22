@echo off

if not defined VSINSTALLDIR (
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Auxiliary\Build\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Preview\VC\Auxiliary\Build\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 15.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 8.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 7.1\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 7.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 6.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( set VCVARSPATH="C:\Program Files (x86)\Microsoft Visual Studio 5.0\VC\vcvarsall.bat" ) else ( goto init_cl )
	if not exist %VCVARSPATH% ( echo Failed to locate vcvarsall.bat & exit /b 1 )
:init_cl
	echo call %VCVARSPATH% x64
	call %VCVARSPATH% x64
)
