@echo off  
rem ˵����java�ļ��Զ����벢���е�������  
rem ע��������Ĭ����Demo �����Լ���  
rem ֧���ⲿ����(vbs,IDE,notepad++��)����  
cd /d "%~dp0"  
:start  
echo.  
echo ���ڱ���,���Ե�...............................................................  
echo.  
javac *.java 2> error.txt
if errorlevel 1 goto err
echo.  
echo ����ɹ���class�ļ����н��:  
echo.  
java Demo > result.txt
echo.  
echo ����������±��벢����........................................................  
pause>nul  
echo ����...  
cls  
goto start  
:err     
echo.  
echo ���޸Ĵ����еĴ���! Ȼ����������±���...................................err  
pause>nul   
goto start  