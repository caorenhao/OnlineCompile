@echo off  
::˵��:javac�Զ������������������  
::�������޸�(*.java)����·��,֧����run.batͬ�������¼�Ŀ¼·��,�����·��  
::֧���ⲿ����(����vbs,bat,notapad++)�ȵ��ñ����� run.bat  
::������run.bat������¼��ļ�makeRun.bat��makeRunPack.bat  
::��������ʾ����·��,��[%%f &&]�ĳ� [%%f >nul &&] �Ϳ����� (����������)  
cd /d "%~dp0"  
for %%f in (*.java)  do find /i "package" %%f   && goto pack || goto Nopack  
:Nopack  
makeRun.bat  
:pack  
makeRunPack.bat  