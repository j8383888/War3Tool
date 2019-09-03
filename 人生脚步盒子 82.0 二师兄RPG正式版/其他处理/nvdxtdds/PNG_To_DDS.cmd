@echo off
"%~dp0cecho" {0a}
echo ****************************************************************
echo *                    PNG图片转DDS工具                          *
echo *说明：本工具把所在目录下的PNG格式图片全部转换为DDS格式图片。  *
echo *      如果已经DDS文件，且没有BAK文件存在，则备份DDS文件。     *
echo *                                         作者：shangke1988    *
echo *                                               猛犸汉化组     *
echo *                                               2012-5-23      *
echo ****************************************************************
echo.
"%~dp0cecho" {07}
if not "%~1a" == "a" ( set wildcard="%~1\*.bak" ) else ( set wildcard=*.bak )
rem echo %wildcard%
for %%i in (%wildcard%) do (
   if exist %%~dpni.png (
      if not exist %%~dpni.bak if exist %%~dpni.dds ren %%~dpni.dds %%~dpni.bak
      call :convert "%%~dpni.png"
   ) else (
      "%~dp0cecho" {0c}ERROR:{#} "{09}%%~dpni.png{#}" isn't exist.{\n}
   )
)
pause
exit /b

:convert
echo "%~dp0nvdxt" -nomipmap -file "%~1" -output "%~dpn1.dds"
"%~dp0nvdxt" -nomipmap -file "%~1" -output "%~dpn1.dds"
if not %errorlevel% == 0 (
   "%~dp0cecho" {0c}ERROR:{#} Can't convert "{09}%~1{#}".{\n}
)