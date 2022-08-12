@ECHO OFF
:start
cd C:\Users\GIYANTO JAYA\Documents\GitHub
dir "*.java" /s
echo Java ada di : C:\Users\GIYANTO JAYA\Documents\GitHub\Coding-PGT\kemampuan-dasar-1\kasus

echo ada , ingin mengganti nama ?
SET choice=
SET /p choice=[Y/T]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='T' GOTO no
IF '%choice%'=='t' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
echo Bye!
Pause
EXIT

:yes
set /p variable= Nama Baru : %variable% 
set "xx=%variable%"
set "msg=Ingin ubah nama jadi %xx% ?"
set msg
SET choice=
SET /p choice=[Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO go
IF '%choice%'=='y' GOTO go
IF '%choice%'=='T' GOTO no
IF '%choice%'=='t' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:go
cd C:\Users\GIYANTO JAYA\Documents\GitHub\Coding-PGT\kemampuan-dasar-1\kasus
ren "C:\Users\GIYANTO JAYA\Documents\GitHub\Coding-PGT\kemampuan-dasar-1\kasus\*.java" "%variable%.java"
echo Berhasil
PAUSE
EXIT