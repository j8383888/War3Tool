@echo off
"%~dp0cecho" {0a}
echo ****************************************************************
echo *                    PNGͼƬתDDS����                          *
echo *˵���������߰�����Ŀ¼�µ�PNG��ʽͼƬȫ��ת��ΪDDS��ʽͼƬ��  *
echo *      ����Ѿ�DDS�ļ�����û��BAK�ļ����ڣ��򱸷�DDS�ļ���     *
echo *                                         ���ߣ�shangke1988    *
echo *                                               ���ﺺ����     *
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