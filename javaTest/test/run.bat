@echo off  
::说明:javac自动编译运行批处理程序  
::可自行修改(*.java)处的路径,支持与run.bat同级或其下级目录路径,或绝对路径  
::支持外部程序(比如vbs,bat,notapad++)等调用本程序 run.bat  
::本程序run.bat会调用下级文件makeRun.bat或makeRunPack.bat  
::若不想显示包的路径,把[%%f &&]改成 [%%f >nul &&] 就可以了 (不包括方框)  
cd /d "%~dp0"  
for %%f in (*.java)  do find /i "package" %%f   && goto pack || goto Nopack  
:Nopack  
makeRun.bat  
:pack  
makeRunPack.bat  