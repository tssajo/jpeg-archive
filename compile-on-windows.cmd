@ECHO OFF
CD src\iqa
REM You might need to find your vcvarsall.bat file on your Windows computer and then CALL that from here like this:
REM CALL "C:\path\to\your\vcvarsall.bat" x64
MsBuild.exe iqa.sln /t:Build /p:Configuration=Release /p:Platform=x64 /p:DebugSymbols=false /p:DebugType=None
CD ..\..
nmake /NOLOGO -f Makefile.w32
