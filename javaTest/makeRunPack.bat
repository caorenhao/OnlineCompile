@echo off  
rem 说明：我是java文件自动编译并运行的批处理  
rem 类名默认是Demo ,包名默认是pack1可以自己改  
rem 支持外部程序(vbs.IDE.notepad++等)调用  
cd /d "%~dp0"  
:start  
echo.  
echo 正在编译,请稍等...............................................................  
echo.  
javac -d . *.java 2> error.txt 
if errorlevel 1 goto err  
echo.  
echo 编译成功，class文件运行结果:  
echo.  
java pack1.Demo  
echo.  
echo 按任意键重新编译并运行........................................................  
pause>nul  
echo 清屏...  
cls  
goto start  
:err  
echo.  
echo 请修改代码中的错误！按任意键继续编译.......................................err  
pause>nul   
goto start  