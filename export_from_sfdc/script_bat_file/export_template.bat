@Echo OFF
pushd "%~dp0"
SET SCRIPT_NAME=%1/export_%1_from_sfdc.yaml

IF "%2"=="" GOTO WITHOUT_DATE
IF "%3"=="" GOTO WITHOUT_DATE

:WITH_DATE
..\..\..\main.exe project=krungsriauto script=krungsriauto\export_from_sfdc\app_script\%SCRIPT_NAME% basepath=KA-Integration TARGET_STARTDATE="%2" TARGET_ENDDATE="%3" > nul
GOTO DONE

:WITHOUT_DATE
..\..\..\main.exe project=krungsriauto script=krungsriauto\export_from_sfdc\app_script\%SCRIPT_NAME% basepath=KA-Integration > nul
GOTO DONE

:DONE
::Pause&Exit
