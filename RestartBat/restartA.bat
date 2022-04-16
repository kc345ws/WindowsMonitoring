:RESTART
tasklist /FI "username eq root" | find /C "RestartA.exe" > A.txt
set /p num= < A.txt
del /F A.txt
echo %num%
if "%num%" == "0" start /b "RestartA.exe" "D:\Downloads\Git\resources\Go\Restart\RestartA.exe" 
ping -n 3 -w 100 0.0.0.1 > A.txt
del /F A.txt


tasklist /FI "username eq root" | find /C "buff.exe" > A.txt
set /p num= < A.txt
del /F A.txt
echo %num%
if "%num%" == "0" start /D "D:\Downloads\Study\Python\BuffYYYP\" buff.exe
ping -n 3 -w 100 0.0.0.1 > A.txt
del /F A.txt


tasklist /FI "username eq root" | find /C "gost-windows-amd64.exe" > A.txt
set /p num= < A.txt
del /F A.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\gost" start.bat
ping -n 3 -w 100 0.0.0.1 > A.txt
del /F A.txt

tasklist /FI "username eq root" | find /C "RestartB.exe" > A.txt
set /p num= < A.txt
del /F A.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\Restart\" restartB.bat
ping -n 3 -w 100 0.0.0.1 > A.txt
del /F A.txt

tasklist /FI "username eq root" | find /C "RestartC.exe" > A.txt
set /p num= < A.txt
del /F A.txt
echo %num%
if "%num%" == "0" start /D "D:\Program Files\Restart\" restartC.bat
ping -n 3 -w 100 0.0.0.1 > A.txt
del /F A.txt
goto RESTART