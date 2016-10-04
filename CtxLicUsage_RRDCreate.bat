c:\CTX\RRDtool\rrdtool.exe create CtxLicUsage.rrd \
--start now-10m --step 300 \
DS:total:GAUGE:450:0:U \
DS:used:GAUGE:450:0:U \
DS:avail:GAUGE:450:0:U \
DS:overdraft:GAUGE:450:0:U \
RRA:AVERAGE:0.5:1:2880 \
RRA:AVERAGE:0.5:3:2880 \
RRA:AVERAGE:0.5:9:2880 \
RRA:AVERAGE:0.5:54:2880
