REM Copies a specified folder to a USB drive
REM Written by: Chris Horan

@Echo Off
Set CopyCmd=/y

If [%1] == [] GoTo NoArgs

If Exist V:\ (
	If Not Exist "V:\%USERNAME%\" MkDir V:\%USERNAME%\
	XCopy %1 V:\%USERNAME%\ /E
	If Exist V:\%USERNAME%\*.lnk Del V:\%USERNAME%\*.lnk
)

If Exist F:\ (
	If Not Exist "F:\%USERNAME%\" MkDir F:\%USERNAME%\
	XCopy %1 F:\%USERNAME%\ /E
	If Exist F:\%USERNAME%\*.lnk Del F:\%USERNAME%\*.lnk
)

If Exist T:\ (
	If Not Exist "T:\%USERNAME%\" MkDir T:\%USERNAME%\
	XCopy %1 T:\%USERNAME%\ /E
	If Exist T:\%USERNAME%\*.lnk Del T:\%USERNAME%\*.lnk
)
Pause
Exit

:NoArgs
Echo No filepath provided
Pause
Exit
