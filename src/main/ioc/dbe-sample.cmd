require s7plc

###################################################################
## User provided PLC or fast controller driver pre configuration ##
###################################################################

#var s7plcDebug <level>
#level=-1:  no output
#level=0:   errors only
#level=1:   startup messages
#level=2: + output record processing
#level=3: + inputput record processing
#level=4: + driver calls
#level=5: + io printout
#be careful using level>1 since many messages may introduce delays

#var s7plcDebug 2
#s7plcConfigure name,IPaddr,port,inSize,outSize,bigEndian,recvTimeout,sendIntervall
#connects to PLC <name> on address <IPaddr> port <port>
#<inSize>        : size of data block PLC -> IOC [bytes]
#<outSize>       : size of data block IOC -> PLC [bytes]
#<bigEndian>=1   : motorola format data (MSB first)
#<bigEndian>=0   : intel format data (LSB first)
#<recvTimeout>   : time to wait for input before disconnecting [ms]
#<sendIntervall> : time to wait before sending new data to PLC [ms]

#s7plcConfigure PLC:DBE1,192.168.1.248,2000,220,56,1,1000,500
#s7plcConfigure PLC:DBE1,192.168.1.102,2000,220,56,1,2000,500
#s7plcConfigure PLC:DBE2,192.168.1.247,2000,220,56,1,1000,500
#s7plcConfigure PLC:DBE2,192.168.1.102,2001,220,56,1,2000,500
s7plcConfigure PLC:DBE1,$(PLC1_IPADDR),$(PLC1_PORT),220,56,1,2000,500
s7plcConfigure PLC:DBE2,$(PLC2_IPADDR),$(PLC2_PORT),220,56,1,2000,500

#############################################
## DB loading                              ##
#############################################

dbLoadRecords "DBE_stat.db", "SUBS=DBE1"
dbLoadRecords("DBE_stat.db","SUBS=DBE2")
#dbLoadTemplate(DBE.substitutions)
# In EEE environment DBE.db is automatically created from DBE.substitutions during the make
dbLoadRecords("DBE.db")


#iocInit