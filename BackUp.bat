@echo Backup started...
SET date="%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%-%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%"
md "D:\BackUP\CICDDEMO\%date%"
xcopy "D:\artifacts\" "D:\BackUP\CICDDEMO\%date%\" /e /s
@echo Backup completed.
c:\windows\system32\inetsrv\appcmd\system32\inetsrv\APPCMD.exe add site /name:CICDDEMOBackUp /bindings:"http/*:91:" /physicalPath:"D:\BackUP\CICDDEMO\%date%\"
pause


