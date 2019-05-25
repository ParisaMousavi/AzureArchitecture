param(
    [Parameter(Mandatory=$true)]
    [string] $sa_password,

    [Parameter(Mandatory=$true)]
    [string] $data_path)

# start the service
Write-Verbose 'Starting SQL Server'
Start-Service MSSQL`$SQLEXPRESS

if ($sa_password -ne "_") {
	Write-Verbose 'Changing SA login credentials'
    $sqlcmd = "ALTER LOGIN sa with password='$sa_password'; ALTER LOGIN sa ENABLE;"
    Invoke-SqlCmd -Query $sqlcmd -ServerInstance ".\SQLEXPRESS" 
}

## location of data and log file
$mdfPath = "$data_path\SignUp_Primary.mdf"
$ldfPath = "$data_path\SignUp_Primary.ldf"

# attach data files if they exist: 
if ((Test-Path $mdfPath) -eq $true) {
    ## this command must check if database signup doesn't exist then it will be created
    $sqlcmd = "IF DB_ID('SignUp') IS NULL BEGIN CREATE DATABASE SignUp ON (FILENAME = N'$mdfPath')"
    if ((Test-Path $ldfPath) -eq $true) {
        $sqlcmd =  "$sqlcmd, (FILENAME = N'$ldfPath')"
    }
    $sqlcmd = "$sqlcmd FOR ATTACH; END"
    ## it's only a text to dispaly what the container is doing...
    ## this will be shown in docker file of the container
    Write-Verbose 'Data files exist - will attach and upgrade database'
    Invoke-Sqlcmd -Query $sqlcmd -ServerInstance ".\SQLEXPRESS"
}
else {
    ## if there is no data file ww don't need to to anything
    ## only we write another log entry
     Write-Verbose 'No data files - will create new database'
}

# deploy or upgrade the database:
## the source here is dacpac, which has the desired state for database
## a:Script will generate the dif script, which contains the SQL COMMANDs needed to
## bring the target database into line with source dacpac. and this sql file /op:deploy.sql
## will stay inside the container and will be useful for debuding  the changes we have made
$SqlPackagePath = 'C:\Program Files (x86)\Microsoft SQL Server\130\DAC\bin\SqlPackage.exe'
& $SqlPackagePath  `
    /sf:SignUp.Database.dacpac `
    /a:Script /op:deploy.sql /p:CommentOutSetVarDeclarations=true `
    /tsn:.\SQLEXPRESS /tdn:SignUp /tu:sa /tp:$sa_password 

$SqlCmdVars = "DatabaseName=SignUp", "DefaultFilePrefix=SignUp", "DefaultDataPath=$data_path\", "DefaultLogPath=$data_path\"  
Invoke-Sqlcmd -InputFile deploy.sql -Variable $SqlCmdVars -Verbose

Write-Verbose "Deployed SignUp database, data files at: $data_path"

$lastCheck = (Get-Date).AddSeconds(-5) 
## to relay SQL entries from the event log out to docker
while ($true) { 
    Get-EventLog -LogName Application -Source "MSSQL*" -After $lastCheck | Select-Object TimeGenerated, EntryType, Message	 
    $lastCheck = Get-Date 
    Start-Sleep -Seconds 5 
}