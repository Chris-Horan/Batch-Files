REM Copies the current user's desktop to a USB key in drive F: or V:
REM Written by: Chris Horan

@Echo Off

IF EXIST V:\ (
	IF NOT EXIST "V:\%USERNAME%\" mkdir V:\%USERNAME%\Desktop
	XCOPY %USERPROFILE%\Desktop V:\%USERNAME%\Desktop /E
	DEL V:\%USERNAME%\Desktop\*.lnk
)

IF EXIST F:\ (
	IF NOT EXIST "F:\%USERNAME%\" mkdir F:\%USERNAME%\Desktop
	XCOPY %USERPROFILE%\Desktop F:\%USERNAME%\Desktop /E
	DEL F:\%USERNAME%\Desktop\*.lnk
)
PAUSE
