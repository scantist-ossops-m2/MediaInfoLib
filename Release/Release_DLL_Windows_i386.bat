@rem Copyright (c) MediaArea.net SARL. All Rights Reserved.
@rem
@rem Use of this source code is governed by a BSD-style license that can
@rem be found in the License.html file in the root of the source tree.
@rem

@echo off

rem --- Search binaries ---
set BPATH=
if exist "%~dp0\..\..\..\MediaArea-Utils-Binaries" set BPATH="%~dp0\..\..\..\MediaArea-Utils-Binaries"
if exist "%~dp0\..\..\MediaArea-Utils-Binaries" set BPATH="%~dp0\..\..\MediaArea-Utils-Binaries"
if "%BPATH%"=="" (
    echo "ERROR: binaries path not found"
    exit /b 1
)

rem --- Clean up ---
del MediaInfoDLL_Windows_i386.7z
del MediaInfoDLL_Windows_i386.zip
rmdir MediaInfoDLL_Windows_i386\ /S /Q
mkdir MediaInfoDLL_Windows_i386\


rem --- Copying : Documentation ---
mkdir Doc
cd ..\Source\Doc
%BPATH%\Windows\Doxygen\doxygen
cd ..\..\Release
mkdir MediaInfoDLL_Windows_i386\Developers\Doc\
copy ..\Doc\*.* MediaInfoDLL_Windows_i386\Developers\Doc\
rmdir Doc /S /Q
xcopy ..\Source\Doc\*.html MediaInfoDLL_Windows_i386\Developers\ /S
mkdir MediaInfoDLL_Windows_i386\Developers\List_Of_Parameters
copy ..\Source\Resource\Text\Stream\*.csv MediaInfoDLL_Windows_i386\Developers\List_Of_Parameters

rem --- Copying : Include ---
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.h MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL_Static.h MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.def MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.pas MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.cs MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.jsl MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.vb MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.JNA.java MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.JNI.java MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.JNative.java MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL.py MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\
xcopy ..\Source\MediaInfoDLL\MediaInfoDLL3.py MediaInfoDLL_Windows_i386\Developers\Source\MediaInfoDLL\

@rem --- Copying : Projects ---
xcopy ..\Project\BCB\Example\*.bpf MediaInfoDLL_Windows_i386\Developers\Project\BCB\Example\
xcopy ..\Project\BCB\Example\*.bpr MediaInfoDLL_Windows_i386\Developers\Project\BCB\Example\
xcopy ..\Project\BCB\Example\*.res* MediaInfoDLL_Windows_i386\Developers\Project\BCB\Example\
xcopy ..\Project\BCB\Example\*.dfm MediaInfoDLL_Windows_i386\Developers\Project\BCB\Example\
xcopy ..\Project\BCB\Example\*.h MediaInfoDLL_Windows_i386\Developers\Project\BCB\Example\
xcopy ..\Project\BCB\Example\*.cpp MediaInfoDLL_Windows_i386\Developers\Project\BCB\Example\
xcopy ..\Project\CodeBlocks\Example\*.cbp MediaInfoDLL_Windows_i386\Developers\Project\CodeBlocks\Example\
xcopy ..\Project\Delphi\Example\*.dpr MediaInfoDLL_Windows_i386\Developers\Project\Delphi\Example\
xcopy ..\Project\Delphi\Example\*.dfm MediaInfoDLL_Windows_i386\Developers\Project\Delphi\Example\
xcopy ..\Project\Delphi\Example\*.res MediaInfoDLL_Windows_i386\Developers\Project\Delphi\Example\
xcopy ..\Project\Delphi\Example\*.pas MediaInfoDLL_Windows_i386\Developers\Project\Delphi\Example\
xcopy ..\Project\Delphi\Example\*.bdsproj MediaInfoDLL_Windows_i386\Developers\Project\Delphi\Example\
xcopy ..\Project\Delphi\Example\*.bdsgroup MediaInfoDLL_Windows_i386\Developers\Project\Delphi\Example\
xcopy ..\Project\DevCpp\Example\*.dev MediaInfoDLL_Windows_i386\Developers\Project\DevCpp\Example\
xcopy ..\Project\MSCS2008\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\
xcopy ..\Project\MSCS2008\Example\*.cs MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\Example\
xcopy ..\Project\MSCS2008\Example\*.csproj MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\Example\
xcopy ..\Project\MSCS2008\Example\*.res* MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\Example\
xcopy ..\Project\MSCS2008\Example\*.ico MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\Example\
xcopy ..\Project\MSCS2008\asp_net_web_application\*.cs MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\asp_net_web_application\ /S
xcopy ..\Project\MSCS2008\asp_net_web_application\*.csproj MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\asp_net_web_application\
xcopy ..\Project\MSCS2008\asp_net_web_application\*.aspx MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\asp_net_web_application\
xcopy ..\Project\MSCS2008\asp_net_web_application\*.config MediaInfoDLL_Windows_i386\Developers\Project\MSCS2008\asp_net_web_application\
xcopy ..\Project\MSCS2010\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\
xcopy ..\Project\MSCS2010\Example\*.cs MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\Example\
xcopy ..\Project\MSCS2010\Example\*.csproj MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\Example\
xcopy ..\Project\MSCS2010\Example\*.res* MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\Example\
xcopy ..\Project\MSCS2010\Example\*.ico MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\Example\
xcopy ..\Project\MSCS2010\asp_net_web_application\*.cs MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\asp_net_web_application\ /S
xcopy ..\Project\MSCS2010\asp_net_web_application\*.csproj MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\asp_net_web_application\
xcopy ..\Project\MSCS2010\asp_net_web_application\*.aspx MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\asp_net_web_application\
xcopy ..\Project\MSCS2010\asp_net_web_application\*.config MediaInfoDLL_Windows_i386\Developers\Project\MSCS2010\asp_net_web_application\
xcopy ..\Project\MSJS\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSJS\
xcopy ..\Project\MSJS\Example\*.jsl MediaInfoDLL_Windows_i386\Developers\Project\MSJS\Example\
xcopy ..\Project\MSJS\Example\*.vjsproj MediaInfoDLL_Windows_i386\Developers\Project\MSJS\Example\
xcopy ..\Project\MSJS\Example\*.res* MediaInfoDLL_Windows_i386\Developers\Project\MSJS\Example\
xcopy ..\Project\MSVB\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSVB\
xcopy ..\Project\MSVB\Example\*.vb MediaInfoDLL_Windows_i386\Developers\Project\MSVB\Example\
xcopy ..\Project\MSVB\Example\*.vbproj MediaInfoDLL_Windows_i386\Developers\Project\MSVB\Example\
xcopy ..\Project\MSVB\Example\*.res* MediaInfoDLL_Windows_i386\Developers\Project\MSVB\Example\
xcopy "..\Project\MSVB\Example\My Project\*.*" "MediaInfoDLL_Windows_i386\Developers\Project\MSVB\Example\My Project\"
xcopy "..\Project\MSVB\Example VB6\*.*" "MediaInfoDLL_Windows_i386\Developers\Project\MSVB\Example VB6\"
xcopy ..\Project\MSVC2008\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSVC2008\
xcopy ..\Project\MSVC2008\Example\HowToUse_Dll.vcproj MediaInfoDLL_Windows_i386\Developers\Project\MSVC2008\Example\
xcopy ..\Project\MSVC2013\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSVC2013\
xcopy ..\Project\MSVC2013\Example\HowToUse_Dll.vcxproj MediaInfoDLL_Windows_i386\Developers\Project\MSVC2013\Example\
xcopy ..\Project\MSVC2013\Example\HowToUse_Dll.vcxproj.filters MediaInfoDLL_Windows_i386\Developers\Project\MSVC2013\Example\
xcopy ..\Project\MSVC2015\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSVC2015\
xcopy ..\Project\MSVC2015\Example\HowToUse_Dll.vcxproj MediaInfoDLL_Windows_i386\Developers\Project\MSVC2015\Example\
xcopy ..\Project\MSVC2015\Example\HowToUse_Dll.vcxproj.filters MediaInfoDLL_Windows_i386\Developers\Project\MSVC2015\Example\
xcopy ..\Project\MSVC2019\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSVC2019\
xcopy ..\Project\MSVC2019\Example\HowToUse_Dll.vcxproj MediaInfoDLL_Windows_i386\Developers\Project\MSVC2019\Example\
xcopy ..\Project\MSVC2019\Example\HowToUse_Dll.vcxproj.filters MediaInfoDLL_Windows_i386\Developers\Project\MSVC2019\Example\
xcopy ..\Project\MSVC2022\*.sln MediaInfoDLL_Windows_i386\Developers\Project\MSVC2022\
xcopy ..\Project\MSVC2022\Example\HowToUse_Dll.vcxproj MediaInfoDLL_Windows_i386\Developers\Project\MSVC2022\Example\
xcopy ..\Project\MSVC2022\Example\HowToUse_Dll.vcxproj.filters MediaInfoDLL_Windows_i386\Developers\Project\MSVC2022\Example\
xcopy ..\Project\GCC\Example\Make* MediaInfoDLL_Windows_i386\Developers\Project\GCC\Example\
xcopy ..\Project\Java\Example.JNA\*.java MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNA\
xcopy ..\Project\Java\Example.JNA\*.txt MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNA\
xcopy ..\Project\Java\Example.JNA\*.bat MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNA\
xcopy ..\Project\Java\Example.JNA\*.sh MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNA\
xcopy ..\Project\Java\Example.JNI\*.bat MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNI\
xcopy ..\Project\Java\Example.JNI\*.sh MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNI\
xcopy ..\Project\Java\Example.JNative\*.java MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNative\
xcopy ..\Project\Java\Example.JNative\*.txt MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNative\
xcopy ..\Project\Java\Example.JNative\*.bat MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNative\
xcopy ..\Project\Java\Example.JNative\*.sh MediaInfoDLL_Windows_i386\Developers\Project\Java\Example.JNative\
xcopy ..\Project\NetBeans\Example.JNA\*.xml MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNA\ /s
xcopy ..\Project\NetBeans\Example.JNA\*.properties MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNA\ /s
xcopy ..\Project\NetBeans\Example.JNA\*.mf MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNA\
xcopy ..\Project\NetBeans\Example.JNA\*.txt MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNA\
xcopy ..\Project\NetBeans\Example.JNA\src\*.java MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNA\src\
xcopy ..\Project\NetBeans\Example.JNative\*.xml MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNative\ /s
xcopy ..\Project\NetBeans\Example.JNative\*.properties MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNative\ /s
xcopy ..\Project\NetBeans\Example.JNative\*.mf MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNative\
xcopy ..\Project\NetBeans\Example.JNative\*.txt MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNative\
xcopy ..\Project\NetBeans\Example.JNative\src\*.java MediaInfoDLL_Windows_i386\Developers\Project\NetBeans\Example.JNative\src\

rem --- Copying : Libs ---
xcopy ..\Release\BCB\DLL\MediaInfo.lib MediaInfoDLL_Windows_i386\Developers\Release\BCB\DLL\
xcopy ..\Project\MSVC2022\Win32\Release\MediaInfo.lib MediaInfoDLL_Windows_x64\Developers\Project\MSVC2022\Win32\Release\
xcopy ..\Project\MSVC2022\Win32\Debug\MediaInfo.lib MediaInfoDLL_Windows_x64\Developers\Project\MSVC2022\x64\Debug\

rem --- Copying : Examples ---
xcopy ..\Source\Example\HowToUse_Dll*.* MediaInfoDLL_Windows_i386\Developers\Source\Example\
xcopy Example.ogg MediaInfoDLL_Windows_i386\Developers\

rem --- Copying : Information files ---
copy ..\License.html MediaInfoDLL_Windows_i386\Developers\
copy ..\History_DLL.txt MediaInfoDLL_Windows_i386\Developers\History.txt
copy ..\Changes.txt MediaInfoDLL_Windows_i386\Developers\
copy ReadMe_DLL_Windows.txt MediaInfoDLL_Windows_i386\ReadMe.txt

rem --- Copying : Contrib ---
xcopy ..\Contrib\*.* MediaInfoDLL_Windows_i386\Developers\Contrib\ /S

rem --- Copying : DLL ---
xcopy ..\Project\MSVC2022\Win32\Release\MediaInfo.dll MediaInfoDLL_Windows_i386\
xcopy ..\Project\MSVC2022\Win32\Release\MediaInfo_InfoTip.dll MediaInfoDLL_Windows_i386\
xcopy ..\Project\MSVC2022\ShellExtension\*.bat MediaInfoDLL_Windows_i386\


rem --- Compressing Archive ---
cd MediaInfoDLL_Windows_i386\
%BPATH%\Windows\7-Zip\7z a -r -t7z -mx9 ..\MediaInfo_DLL_Windows_i386_WithoutInstaller.7z *
%BPATH%\Windows\7-Zip\7z a -r -tzip -mx9 ..\MediaInfo_DLL_Windows_i386_WithoutInstaller.zip *
cd ..

rem --- Installer ---
rem --- Installer ---
pushd %BPATH%\Windows\NSIS
makensis.exe "%~dp0\..\Source\Install\MediaInfo_DLL_Windows_i386.nsi"
popd

rem --- Clean up ---
if "%1"=="SkipCleanUp" goto SkipCleanUp
rmdir MediaInfoDLL_Windows_i386\ /S /Q
:SkipCleanUp
