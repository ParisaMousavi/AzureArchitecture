
# Get List of powershell Aliases
Get-Alias -Definition Invoke-WebRequest | Format-Table -AutoSize

# HTTP Request to a website
Invoke-WebRequest -Uri https://www.google.com
Curl -Uri https://www.google.com

# HTTP Request to a website and retrive a specific section
Invoke-WebRequest -Uri https://www.google.com | Select-Object -ExpandProperty Headers
Curl -Uri https://www.google.com | Select-Object -ExpandProperty Headers

# References:
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/out-file?view=powershell-6#parameters
# https://docs.microsoft.com/en-us/powershell/scripting/whats-new/breaking-changes-ps6?view=powershell-6#change-outputencoding-to-use-utf-8-nobom-encoding-rather-than-ascii-5369

