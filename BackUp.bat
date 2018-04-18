@echo Backup started...
SET date="%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%-%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%"
md "D:\BackUP\CICDDEMO\%date%"
xcopy "C:\inetpub\wwwroot\CICDDEMO" "D:\BackUP\CICDDEMO\%date%\" /e /s
@echo Backup completed.
c:\windows\system32\inetsrv\appcmd.exe set site /site.name:"CICDDEMOBackUp" /application[path='/'].virtualDirectory[path='/'].physicalPath:"D:\BackUP\CICDDEMO\%date%\"
pause


