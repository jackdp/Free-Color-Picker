@echo off
call globals.bat

set LastFile=.\palettes\_last.colors
if exist %LastFile% del %LastFile%

copy DEFAULT_last.colors %LastFile%

copy %AppExe32Compiled% %AppExe32%

if exist %PortableFileZip32% del %PortableFileZip32%
%CreatePortableZip32%

copy %AppExe64Compiled% %AppExe64%

if exist %PortableFileZip64% del %PortableFileZip64%
%CreatePortableZip64%





