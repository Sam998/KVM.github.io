@echo off
call e:\pathBase.bat

rem TextureMergerPathæ˜¯TextureMerger.exeæ‰€åœ¨è·¯å¾„
set Path=%PATH%;%TextureMergerPath%;
rem @echo Path=%PATH%

set "p=%~dp0"
for /f "delims=" %%i in ("%p:~0,-1%") do (set file=%%~ni)
set imagePath=%cd%

if %cd%==%cd:~,3% echo µ±Ç°Ä¿Â¼ÒÑ¾­ÊÇ%cd:~,1%ÅÌµÄ¸ùÄ¿Â¼ &goto end
cd..
cd..
set outputFile=%cd%\uipacks\%file%.json

echo %imagePath%
echo %outputFile%

TextureMerger -p %imagePath% -o %outputFile%

@echo ---Í¼Æ¬ºÏ³É ok!
:end
pause