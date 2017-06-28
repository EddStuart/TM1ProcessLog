##
## Ensure that two parameters are setup on the process
##
## processName  String Type
## elementName  String Type

#### Process Logging ##############################################
DimensionElementInsert ('zProcessLogs', processName, '', 'N');
DimensionElementComponentAdd ('zProcessLogs', 'AllLogs',
processName, 1);

DimensionElementInsert ('zProcessLogs', elementName, '', 'N');
DimensionElementComponentAdd ('zProcessLogs', processName,
elementName, 1);
#### Process Logging ###############################################
