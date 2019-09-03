@echo off

rem --------------- common -----------------
set AppName=Free Color Picker
set AppVer=1.1
set AppFullName=%AppName% %AppVer%
set AppUrl=http://www.pazera-software.com/products/free-color-picker/
set AppName_=Free_Color_Picker
set ArchiveSrc=%AppFullName%_Project.7z

set ProjectsBackupDir=E:\PROJECTS\_backup


rem ----------------- 32 bit ---------------------
set AppExe32=FreeColorPicker.exe
set AppExe32Compiled=FreeColorPicker.32.exe
set PortableFileZip32=%AppName_%_PORTABLE_32bit.zip
set PortableFile7z32=%AppName_%_PORTABLE_32bit.7z
set CreatePortableZip32=7z a -tzip -mx=9 %PortableFileZip32% %AppExe32% README.txt palettes\* lang\*.* pictures\sample*
set CreatePortable7z32=7z a -t7z -mx=9 %PortableFile7z32% %AppExe32% README.txt palettes\* lang\*.* pictures\sample*

rem ----------------- 64 bit ---------------------
set AppExe64=FreeColorPicker.exe
set AppExe64Compiled=FreeColorPicker.64.exe
set PortableFileZip64=%AppName_%_PORTABLE_64bit.zip
set PortableFile7z64=%AppName_%_PORTABLE_64bit.7z
set CreatePortableZip64=7z a -tzip -mx=9 %PortableFileZip64% %AppExe64% README.txt palettes\* lang\*.* pictures\sample*
set CreatePortable7z64=7z a -t7z -mx=9 %PortableFile7z64% %AppExe64% README.txt palettes\* lang\*.* pictures\sample*


