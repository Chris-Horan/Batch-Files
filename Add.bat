REM Addition game where you practice adding 2 numbers between 1 and 100
REM Written by: Chris Horan

@echo off
setlocal EnableDelayedExpansion

:LOOP

SET /a num1 = %RANDOM% %% 100 + 1
SET /a num2 = %RANDOM% %% 100 + 1

SET /a ans= %num1% + %num2%

SET /p guess= %num1% + %num2% = 

IF %guess% == %ans% echo Correct!
IF NOT %guess% == %ans% echo Nope, %ans%

GOTO LOOP
