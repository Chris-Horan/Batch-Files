REM Practice multiplying two numbers between 1 and 19.
REM Written by: Chris Horan

@echo off
setlocal EnableDelayedExpansion

:LOOP

SET /a num1 = %RANDOM% %% 19 + 1
SET /a num2 = %RANDOM% %% 19 + 1

SET /a ans= %num1% * %num2%

SET /p guess= %num1% x %num2% = 

IF %guess% == %ans% echo Correct!
IF NOT %guess% == %ans% echo Nope, %ans%

GOTO LOOP
