@echo off
call e:\pathBase.bat

rem TextureMergerPath是TextureMerger.exe所在路径
set Path=%PATH%;%TextureMergerPath%;
rem @echo Path=%PATH%

set "p=%~dp0"
for /f "delims=" %%i in ("%p:~0,-1%") do (set file=%%~ni)
set imagePath=%cd%

if %cd%==%cd:~,3% echo ��ǰĿ¼�Ѿ���%cd:~,1%�̵ĸ�Ŀ¼ &goto end
cd..
cd..
set outputFile=%cd%\uipacks\%file%.json

echo %imagePath%
echo %outputFile%

TextureMerger -p %imagePath% -o %outputFile%

@echo ---ͼƬ�ϳ� ok!
:end
pause