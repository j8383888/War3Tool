@echo off
"%~dp0cecho" {0a}
echo ****************************************************************
echo *                     �ָ�BAK�ļ�����                          *
echo *˵�����ָ�DDS2PNG�����BAK�ļ���                              *
echo *                                         ���ߣ�shangke1988    *
echo *                                               ���ﺺ����     *
echo *                                               2012-5-23      *
echo ****************************************************************
echo.
"%~dp0cecho" {07}
if not "%~1a" == "a" ( 
 if exist "%~1\*.dds" del "%~1\*.dds"
 if exist "%~1\*.bak" ( ren "%~1\*.bak" *.dds ) else ( "%~dp0cecho" {0c}û�з���BAK�ļ�!{#}{\n})
) else (
 if exist *.dds del *.dds
 if exist *.bak ( ren *.bak *.dds ) else ( "%~dp0cecho" {0c}û�з���BAK�ļ�!{#}{\n}) 
)
pause