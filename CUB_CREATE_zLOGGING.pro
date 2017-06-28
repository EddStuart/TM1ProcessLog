###############################################
# Declare Variables
###############################################

sLoggingMeas = 'zLoggingMeasures' ;

sCube = 'zLogging' ;

###############################################
# Create Dimensions and add Elements
###############################################

DIMENSIONCREATE ( sLoggingMeas ) ;

DIMENSIONELEMENTINSERT ( sLoggingMeas, '', 'default', 'N' ) ;
DIMENSIONELEMENTINSERT ( sLoggingMeas, '', 'override', 'N' ) ;

##############################################
# Create zLogging cube
##############################################

CUBECREATE ( sCube, '}Cubes', sLoggingMeas ) ;
