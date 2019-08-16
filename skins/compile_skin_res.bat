@echo off

set ResCompiler=E:\Embarcadero\XE1\bin\cgrc.exe
set SkinDir=.

rem sZlib c -2 -e 2 -n "main" -i %SkinDir%\main.skn -o %SkinDir%\main.szlib

%ResCompiler% -c65001 "%SkinDir%\skins.rc" -fo%SkinDir%\skins.res

copy %SkinDir%\skins.res ..\src



