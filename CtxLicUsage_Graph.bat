c:\CTX\RRDtool\rrdtool.exe graph graphs\CtxLicUsage-1d.png -w 600 -h 200 --slope-mode \
--vertical-label "Licenses Checked Out" --title "Citrix license usage - XDT_ENT_UD - User/Device" \
DEF:Total=CtxLicUsage.rrd:total:AVERAGE \
DEF:Used=CtxLicUsage.rrd:used:AVERAGE \
DEF:Avail=CtxLicUsage.rrd:avail:AVERAGE \
DEF:Overdraft=CtxLicUsage.rrd:overdraft:AVERAGE \
CDEF:LineUsed=Used,1,* \
CDEF:LineAvail=Avail,1,* \
CDEF:LineTotal=Total,1,* \
CDEF:LineOverdraft=Total,Overdraft,- \
COMMENT:" " COMMENT:"Last    " COMMENT:"Maximum " COMMENT:"Average " COMMENT:"Minimum\l" \
AREA:LineUsed#fe3562:"Used ":STACK GPRINT:Used:LAST:"%%6.3lf %%S" GPRINT:Used:MAX:"%%6.3lf %%S" GPRINT:Used:AVERAGE:"%%6.3lf %%S" GPRINT:Used:MIN:"%%6.3lf %%S\l" \
AREA:LineAvail#cfe694:"Available ":STACK GPRINT:Avail:LAST:"%%6.3lf %%S" GPRINT:Avail:MAX:"%%6.3lf %%S" GPRINT:Avail:AVERAGE:"%%6.3lf %%S" GPRINT:Avail:MIN:"%%6.3lf %%S\l" \
LINE2:LineTotal#3b73fc:"Total " GPRINT:Total:LAST:"%%6.3lf %%S" GPRINT:Total:MAX:"%%6.3lf %%S" GPRINT:Total:AVERAGE:"%%6.3lf %%S" GPRINT:Total:MIN:"%%6.3lf %%S\l" \
LINE1:LineOverdraft#9e0b0f:"Overdraft " GPRINT:Overdraft:LAST:"%%6.3lf %%S" GPRINT:Overdraft:MAX:"%%6.3lf %%S" GPRINT:Overdraft:AVERAGE:"%%6.3lf %%S" GPRINT:Overdraft:MIN:"%%6.3lf %%S\l"

c:\CTX\RRDtool\rrdtool.exe graph graphs\CtxLicUsage-10d.png -w 600 -h 200 –end now –start end-10d –slope-mode \
--vertical-label "Licenses Checked Out" --title "Citrix license usage - XDT_ENT_UD - User/Device" \
DEF:Total=CtxLicUsage.rrd:total:AVERAGE \
DEF:Used=CtxLicUsage.rrd:used:AVERAGE \
DEF:Avail=CtxLicUsage.rrd:avail:AVERAGE \
DEF:Overdraft=CtxLicUsage.rrd:overdraft:AVERAGE \
CDEF:LineUsed=Used,1,* \
CDEF:LineAvail=Avail,1,* \
CDEF:LineTotal=Total,1,* \
CDEF:LineOverdraft=Total,Overdraft,- \
COMMENT:" " COMMENT:"Last    " COMMENT:"Maximum " COMMENT:"Average " COMMENT:"Minimum\l" \
AREA:LineUsed#fe3562:"Used ":STACK GPRINT:Used:LAST:"%%6.3lf %%S" GPRINT:Used:MAX:"%%6.3lf %%S" GPRINT:Used:AVERAGE:"%%6.3lf %%S" GPRINT:Used:MIN:"%%6.3lf %%S\l" \
AREA:LineAvail#cfe694:"Available ":STACK GPRINT:Avail:LAST:"%%6.3lf %%S" GPRINT:Avail:MAX:"%%6.3lf %%S" GPRINT:Avail:AVERAGE:"%%6.3lf %%S" GPRINT:Avail:MIN:"%%6.3lf %%S\l" \
LINE2:LineTotal#3b73fc:"Total " GPRINT:Total:LAST:"%%6.3lf %%S" GPRINT:Total:MAX:"%%6.3lf %%S" GPRINT:Total:AVERAGE:"%%6.3lf %%S" GPRINT:Total:MIN:"%%6.3lf %%S\l" \
LINE1:LineOverdraft#9e0b0f:"Overdraft " GPRINT:Overdraft:LAST:"%%6.3lf %%S" GPRINT:Overdraft:MAX:"%%6.3lf %%S" GPRINT:Overdraft:AVERAGE:"%%6.3lf %%S" GPRINT:Overdraft:MIN:"%%6.3lf %%S\l"

c:\CTX\RRDtool\rrdtool.exe graph graphs\CtxLicUsage-trend.png -w 600 -h 200 --end now+10d --start now-10d --slope-mode \
--vertical-label "Licenses Checked Out" --title "Citrix license usage - XDT_ENT_UD - User/Device" \
DEF:Total=CtxLicUsage.rrd:total:AVERAGE \
DEF:Used=CtxLicUsage.rrd:used:AVERAGE \
DEF:Avail=CtxLicUsage.rrd:avail:AVERAGE \
DEF:Overdraft=CtxLicUsage.rrd:overdraft:AVERAGE \
CDEF:LineUsed=Used,1,* \
CDEF:LineAvail=Avail,1,* \
CDEF:LineTotal=Total,1,* \
CDEF:LineOverdraft=Total,Overdraft,- \
VDEF:slope=LineUsed,LSLSLOPE \
VDEF:cons=LineUsed,LSLINT \
CDEF:leastsquareline=LineUsed,POP,slope,COUNT,*,cons,+ \
COMMENT:" " COMMENT:"Last    " COMMENT:"Maximum " COMMENT:"Average " COMMENT:"Minimum\l" \
AREA:LineUsed#fe3562:"Used ":STACK GPRINT:Used:LAST:"%%6.3lf %%S" GPRINT:Used:MAX:"%%6.3lf %%S" GPRINT:Used:AVERAGE:"%%6.3lf %%S" GPRINT:Used:MIN:"%%6.3lf %%S\l" \
AREA:LineAvail#cfe694:"Available ":STACK GPRINT:Avail:LAST:"%%6.3lf %%S" GPRINT:Avail:MAX:"%%6.3lf %%S" GPRINT:Avail:AVERAGE:"%%6.3lf %%S" GPRINT:Avail:MIN:"%%6.3lf %%S\l" \
LINE2:LineTotal#3b73fc:"Total " GPRINT:Total:LAST:"%%6.3lf %%S" GPRINT:Total:MAX:"%%6.3lf %%S" GPRINT:Total:AVERAGE:"%%6.3lf %%S" GPRINT:Total:MIN:"%%6.3lf %%S\l" \
LINE1:LineOverdraft#9e0b0f:"Overdraft " GPRINT:Overdraft:LAST:"%%6.3lf %%S" GPRINT:Overdraft:MAX:"%%6.3lf %%S" GPRINT:Overdraft:AVERAGE:"%%6.3lf %%S" GPRINT:Overdraft:MIN:"%%6.3lf %%S\l" \
LINE1:leastsquareline#FF9900:"Trend"
