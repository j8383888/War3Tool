@echo off
"%~dp0cecho" {0a}
echo ****************************************************************
echo *                    PSD图片转DDS工具                          *
echo *说明：本工具把所在目录下的PSD格式图片全部转换为DDS格式图片。  *
echo *      遍历目录下的BAK文件，转换同名的PSD图片为DDS格式，如果   *
echo *      不存在PSD文件，则尝试转换PNG文件。如果已经存在DDS文件， *
echo *      且没有BAK文件存在，则备份DDS文件。                      *
echo *                                         作者：shangke1988    *
echo *                                               猛犸汉化组     *
echo *                                               2012-5-24      *
echo ****************************************************************
echo.
"%~dp0cecho" {07}
if not "%~1a" == "a" ( set wildcard="%~1\*.bak" ) else ( set wildcard=*.bak )
rem echo %wildcard%
for %%i in (%wildcard%) do (
   if exist %%~dpni.psd (
      if not exist %%~dpni.bak if exist %%~dpni.dds ren %%~dpni.dds %%~dpni.bak
      call :convert "%%~dpni.psd"
   ) else (
      "%~dp0cecho" {0e}WARNING:{#} "{09}%%~dpni.psd{#}" isn't exist. Try {09}PNG{#} file.{\n}
      if exist %%~dpni.png (
         if not exist %%~dpni.bak if exist %%~dpni.dds ren %%~dpni.dds %%~dpni.bak
         call :convert "%%~dpni.png"
      ) else (
         "%~dp0cecho" {0c}ERROR:{#} "{09}%%~dpni.png{#}" isn't exist.{\n}
      )
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