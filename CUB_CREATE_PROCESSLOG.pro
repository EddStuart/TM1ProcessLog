##### CREATE ProcessLogs cube and dimensions #####
## See source details for Process and Cube Logging on developerworks website
## https://www.ibm.com/developerworks/data/library/cognos/page328.html

###############################################
# Declare Variables
###############################################
sProcessLog = 'zProcessLogs';
sProcessMeas = 'zProcessLogMeasures';
sCube = 'ProcessLogs';

###############################################
# Create Dimensions and add Elements
###############################################
DIMENSIONCREATE(sProcessLog);
DIMENSIONCREATE(sProcessMeas);

DIMENSIONELEMENTINSERT(sProcessLog, '', 'All Logs', 'C');

DIMENSIONELEMENTINSERT(sProcessMeas, '', 'ProcessName', 'S');
DIMENSIONELEMENTINSERT(sProcessMeas, '', 'StartTime', 'S');
DIMENSIONELEMENTINSERT(sProcessMeas, '', 'FinishTime', 'S');
DIMENSIONELEMENTINSERT(sProcessMeas, '', 'ElapsedTime', 'S');
DIMENSIONELEMENTINSERT(sProcessMeas, '', 'Status', 'S');
DIMENSIONELEMENTINSERT(sProcessMeas, '', 'Records', 'N');

##############################################
# Create ProcessLogs cube
##############################################

CUBECREATE(sCube, sProcessLog, sProcessMeas);
