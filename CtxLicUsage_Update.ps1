$licensePool = Get-WmiObject -class "Citrix_GT_License_Pool" -Namespace "ROOT\CitrixLicensing"
$usage = $licensePool | where-object {$_.PLD -like "XDT_ENT_UD"} | select Count,InUseCount,PooledAvailable,Overdraft
# Write-Host $usage.Count $usage.InUseCount $usage.PooledAvailable
$unixtime = [int][double]::Parse($(Get-date -date (Get-Date).ToUniversalTime()-uformat %s))
 
$cmd = "C:\CTX\RRDtool\rrdtool.exe update CtxLicUsage.rrd $($unixtime):$($usage.Count):$($usage.InUseCount):$($usage.PooledAvailable):$($usage.Overdraft)"
iex $cmd
