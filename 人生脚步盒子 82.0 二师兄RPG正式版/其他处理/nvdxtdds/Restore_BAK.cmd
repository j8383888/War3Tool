@echo off
"%~dp0cecho" {0a}
echo ****************************************************************
echo *                     恢复BAK文件工具                          *
echo *说明：恢复DDS2PNG保存的BAK文件。                              *
echo *                                         作者：shangke1988    *
echo *                                               猛犸汉化组     *
echo *                                               2012-5-23      *
echo ****************************************************************
echo.
"%~dp0cecho" {07}
if not "%~1a" == "a" ( 
 if exist "%~1\*.dds" del "%~1\*.dds"
 if exist "%~1\*.bak" ( ren "%~1\*.bak" *.dds ) else ( "%~dp0cecho" {0c}没有发现BAK文件!{#}{\n})
) else (
 if exist *.dds del *.dds
 if exist *.bak ( ren *.bak *.dds ) else ( "%~dp0cecho" {0c}没有发现BAK文件!{#}{\n}) 
)
pause