:RESTART
tasklist /FI "username eq root" | find /C "RestartB.exe" > B.txt
set /p num= < B.txt
del /F B.txt
echo %num%
if "%num%" == "0" start /b "RestartB.exe" "D:\Downloads\Git\resources\Go\Restart\RestartB.exe" 
ping -n 3 -w 100 0.0.0.1 > B.txt
del /F B.txt


tasklist /FI "username eq root" | find /C "buff.exe" > B.txt
set /p num= < B.txt
del /F B.txt
echo %num%
if "%num%" == "0" start /D "D:\Downloads\Study\Python\BuffYYYP\" buff.exe
ping -n 3 -w 100 0.0.0.1 > B.txt
del /F B.txt


tasklist /FI "username eq root" | find /C "gost-windows-amd64.exe" > B.txt
set /p num= < B.txt
del /F B.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\gost" start.bat
ping -n 3 -w 100 0.0.0.1 > B.txt
del /F B.txt

tasklist /FI "username eq root" | find /C "RestartA.exe" > B.txt
set /p num= < B.txt
del /F B.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\Restart\" restartA.bat
ping -n 3 -w 100 0.0.0.1 > B.txt
del /F B.txt

tasklist /FI "username eq root" | find /C "RestartC.exe" > B.txt
set /p num= < B.txt
del /F B.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\Restart\" restartC.bat
ping -n 3 -w 100 0.0.0.1 > B.txt
del /F B.txt
goto RESTART