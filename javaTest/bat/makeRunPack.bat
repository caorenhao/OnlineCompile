@echo off  
rem ˵��������java�ļ��Զ����벢���е�������  
rem ����Ĭ����Demo ,����Ĭ����pack1�����Լ���  
rem ֧���ⲿ����(vbs.IDE.notepad++��)����  
cd /d "%~dp0"  
:start  
echo.  
echo ���ڱ���,���Ե�...............................................................  
echo.  
javac -d . *.java 2> error.txt 
if errorlevel 1 goto err  
echo.  
echo ����ɹ���class�ļ����н��:  
echo.  
java pack1.Demo  
echo.  
echo ����������±��벢����........................................................  
pause>nul  
echo ����...  
cls  
goto start  
:err  
echo.  
echo ���޸Ĵ����еĴ��󣡰��������������.......................................err  
pause>nul   
goto start  