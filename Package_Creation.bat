@ECHO ON   

SET SOURCE_FLOLDER=D:\Jenkins_workspace\workspace\DotNet_CICDDEMO\ContosoUniversity\obj\Release\Package\PackageTmp

SET DEPLOY_FOLDER=D:\artifacts\

ROBOCOPY %SOURCE_FLOLDER% %DEPLOY_FOLDER% /XF *.cs *.pdb /XD *.svn /S /NP

GOTo END 

:END

