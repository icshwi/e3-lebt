#require asyn,4.31+
#require streamdevice, 2.7.7
#require sorensenxg125120, 0.5+
#require sorensensga30x501d,0.5+
#require iocStats,3.1+

## NEW
require stream,2.8.8
require lebt,master





#epicsEnvSet("SAVEFILE_DIR", "/opt/shared/isrc-lebt/savePath")

## SOLENOIDS
#requireSnippet(sorensen30x501d.cmd)


## STEERERS
#requireSnippet(sorensenXG125120.cmd)


## iocStats
#dbLoadTemplate(iocAdminSoft.substitutions,IOC="ISrc-010:Ctrl-IOC-Lebt")


## NEW
############################################################
######## TEST: FAST-PS 2020-400 [Power Supply] #############
############################################################
#drvAsynIPPortConfigure("HVPS", "172.16.60.57:2101")
dbLoadRecords("MagneticField.db")




iocInit


###########################################################
### Operation Parameters from ICSHWI-1265
###########################################################


#dbpf LEBT-010:PwrC-PSCH-01:VolS.DRVH 12.5
#dbpf LEBT-010:PwrC-PSCH-01:VolS.ADEL 0.5
#dbpf LEBT-010:PwrC-PSCH-01:VolS.PREC 1
#dbpf LEBT-010:PwrC-PSCH-01:VolS.EGU "V"
#dbpf LEBT-010:PwrC-PSCH-01:VolR.HIHI 10
#dbpf LEBT-010:PwrC-PSCH-01:VolR.HIGH 6.25
#dbpf LEBT-010:PwrC-PSCH-01:VolR.ADEL 0.5
