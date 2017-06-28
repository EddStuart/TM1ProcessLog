### INSERT INTO PROLOG###

#### Start of Process Logging Header ####################
processName = GETPROCESSNAME() ;
timeStart = NOW ;
dateStart = TIMST(timeStart,'\Y \M \d - \h:\i:\s') ;
elementName = processName | ' - ' | dateStart;
countRecords = 0;
status = 'Not Complete';

# Send parameters to StartLogging
return_value = ExecuteProcess('StartLogging','processName', processName,'elementName',elementName);

#Write status information for Start
CELLPUTS ( status,'ProcessLogs',elementName,'Status' ) ;
CELLPUTS ( dateStart,'ProcessLogs',elementName,'StartTime' ) ;
CELLPUTS ( processName,'ProcessLogs',elementName,'ProcessName' ) ;
CELLPUTS ( status,'ProcessLogs',processName,'Status' ) ;
CELLPUTS ( dateStart,'ProcessLogs',processName,'StartTime' ) ;
CELLPUTS ( processName,'ProcessLogs',processName,'ProcessName' ) ;
#### End of Process Logging Header ####################


### INSERT INTO METADATA/ DATA AS NECESSARY ####

#### Process Logging Record Count #######
countRecords = countRecords + 1;
#########################################


### INSERT INTO EPILOG ####
timeFinish=NOW;
elapsedTime=TIMST(timeFinish - timeStart,'\h:\i:\s');
dateFinish = TIMST(timeFinish,'\Y \M \d - \h:\i:\s');
status = 'Complete';

# Write status information for Finish
CELLPUTS ( status,'ProcessLogs',elementName,'Status' ) ;
CELLPUTS ( dateFinish,'ProcessLogs',elementName,'FinishTime' ) ;
CELLPUTS ( elapsedTime,'ProcessLogs',elementName,'Elapsed Time' ) ;
CELLPUTN ( countRecords,'ProcessLogs',elementName,'Records' ) ;
CELLPUTS ( status,'ProcessLogs',processName,'Status' ) ;
CELLPUTS ( dateFinish,'ProcessLogs',processName,'FinishTime' ) ;
CELLPUTS ( elapsedTime,'ProcessLogs',processName,'Elapsed Time' ) ;
