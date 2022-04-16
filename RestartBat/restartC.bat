:RESTART
tasklist /FI "username eq root" | find /C "RestartC.exe" > C.txt
set /p num= < C.txt
del /F C.txt
echo %num%
if "%num%" == "0" start /b "RestartC.exe" "D:\Downloads\Git\resources\Go\Restart\RestartC.exe" 
ping -n 3 -w 100 0.0.0.1 > C.txt
del /F C.txt


tasklist /FI "username eq root" | find /C "buff.exe" > C.txt
set /p num= < C.txt
del /F C.txt
echo %num%
if "%num%" == "0" start /D "D:\Downloads\Study\Python\BuffYYYP\" buff.exe
ping -n 3 -w 100 0.0.0.1 > C.txt
del /F C.txt


tasklist /FI "username eq root" | find /C "gost-windows-amd64.exe" > C.txt
set /p num= < C.txt
del /F C.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\gost" start.bat
ping -n 3 -w 100 0.0.0.1 > C.txt
del /F C.txt

tasklist /FI "username eq root" | find /C "RestartA.exe" > C.txt
set /p num= < C.txt
del /F C.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\Restart\" restartA.bat
ping -n 3 -w 100 0.0.0.1 > C.txt
del /F C.txt

tasklist /FI "username eq root" | find /C "RestartA.exe" > C.txt
set /p num= < C.txt
del /F C.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\Restart\" restartA.bat
ping -n 3 -w 100 0.0.0.1 > C.txt
del /F C.txt

tasklist /FI "username eq root" | find /C "RestartB.exe" > C.txt
set /p num= < C.txt
del /F C.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\Restart\" restartB.bat
ping -n 3 -w 100 0.0.0.1 > C.txt
del /F C.txt
goto RESTART