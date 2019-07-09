
# Check the current module installed
Get-InstalledModule -Name Az -AllVersions

Uninstall-AzureRm

# Install Az version 0.7.0
Install-Module -Name Az -AllowClobber -RequiredVersion 0.7.0 
# -AllowClobber is for forcing and overwritting 

# Load Az version 0.7.0
Import-Module -Name Az -RequiredVersion 0.7.0

# List of installed modules
Get-InstalledModule -Name Az -AllVersions | select Name,Version

# Connect to Azure Account
Connect-AzAccount

# Add input stream to Azure stream analytics (Job input)
# https://docs.microsoft.com/en-us/powershell/module/az.streamanalytics/New-azStreamAnalyticsInput?view=azps-2.4.0

# Example from a file
# New-AzStreamAnalyticsInput -ResourceGroupName "StreamAnalytics-Default-West-US" -JobName "StreamingJob" -File "C:\Input.json"
# New-AzStreamAnalyticsInput
#   [-JobName] <String>
#   [[-Name] <String>]
#   [-File] <String>
#   [-Force]
#   [-ResourceGroupName] <String>
#   [-DefaultProfile <IAzureContextContainer>]
#   [-WhatIf]
#   [-Confirm]
#   [<CommonParameters>]

# Link for input templatwe
# https://docs.microsoft.com/en-us/azure/templates/microsoft.streamanalytics/2016-03-01/streamingjobs
New-AzStreamAnalyticsInput -JobName JobForPowershell -ResourceGroupName ServiceBusDemoParisa -Name InputfromBlob -File StreamAnalyticsBlobInputStream.json 
    


