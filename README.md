## CtxLicUsage - Citrix License Usage monitoring script

> Those scripts are used to generate nice graphs showing Citrix License Usage - only **User/Device**.
> 
> Documenation for those scripts are located on my [blog post](http://xenthusiast.com/monitoring-citrix-licenses-usage-graphs-using-wmi-powershell-and-rrdtool/). Here are also the download link for RRDtool Windows binaries.

##### Requirements

* RRDtool for Windows (binary)
* PowerShell v.2
* Task scheduler enabled on Windows machine

##### Intallation

> The script files has to be places in **CTX** directory on **C:** drive (right now it's hardcoded). It will be changed in the future

To install this script:
- Create **CTX** directory on the **C:** drive of Citrix License Server
- Inside **CTX** directory create two directories: graphs and RRDtool
  - **graphs** – folder contain generated graphs
  - **RRDtool** – windows binaries - put there RDD binaries
- Put all files to **CTX** directory:
  - **CtxLicUsage_RRDCreate.bat** – script to create Round Robin Database (RRD file)
  - **CtxLicUsage.rrd** – our Round Robin Database
  - **CtxLicUsage_Graph.bat** – script with commands to generate graphs  – this batch is run using Task Scheduler
  - **CtxLicUsage_Update.bat** – script to execute PowerShell script- CtxLicUsage_Update.ps1 – this batch is run using Task Scheduler (every 5 minutes)
  - **CtxLicUsage_Update.ps1** – script to update RRD file
- Set Task Scheduler, to execute this CtxLicUsage_Update.bat script every 5 minutes (infinitely)
- Wait couple of minutes and be happy of new nice graphs

##### TODO

* Add config file (right now some information are hardcoded inside the scripts)
* Add options to monitor Concurrent Users licenses
