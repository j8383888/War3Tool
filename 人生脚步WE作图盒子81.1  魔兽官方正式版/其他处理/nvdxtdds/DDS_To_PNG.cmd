@echo off
"%~dp0cecho" {0a}
echo ****************************************************************
echo *                    DDS图片转PNG工具                          *
echo *说明：本工具把所在目录下的DDS格式图片全部转换为PNG格式图片，  *
echo *      并且重命名DDS文件为BAK文件。                            *
echo *                                         作者：shangke1988    *
echo *                                               猛犸汉化组     *
echo *                                               2012-5-23      *
echo ****************************************************************
echo.
"%~dp0cecho" {07}
echo "%~dp0dds2png.exe" -b -s "%~1"
"%~dp0dds2png.exe" -b -s "%~1"
pause