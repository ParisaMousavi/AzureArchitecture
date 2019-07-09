# Add Input stream from blob storage to azure stream analytics

Because of App Version problem I tried to add an input stream to azure stream analytics.
In JSON file development for defining/Creating a Azure stream Input, one thing must be considered. Some attributes are related with eachother.
For example

    "pathPattern":"test-blob_2324jklj/PageViews/{date}/{time}",
    "dateFormat":"YYYY-MM-DD",
    "timeFormat":"HH"

If pathpattern doesn't have a value, we must uses "". Therefore the next two attributes are not neccessary.
If we don't remove the dateFormat and timeFormat from attributes, the return value in Powershell is always an error because there is no partitionKey in pathpattern to be repllaced with dateformat and timeformat.

This is the powershell command for creeating a stream analytics job input via powershell:
    New-AzStreamAnalyticsInput -JobName JobForPowershell -ResourceGroupName ServiceBusDemoParisa -Name InputfromBlob -File StreamAnalyticsBlobInputStream.json

 

 
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTI5MDEwMjMsMTM0ODQ2MzQ5OSwxMzQ4ND
YzNDk5XX0=
-->