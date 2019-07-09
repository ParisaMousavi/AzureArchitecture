# Add Input stream from blob storage to azure stream analytics

Because of App Version problem I tried to add an input stream to azure stream analytics.
In JSON file development for defining/Creating a Azure stream Input, one thing must be considered. Some attributes are related with eachother.
For example

    "pathPattern":"test-blob_2324jklj/PageViews/{date}/{time}",
    "dateFormat":"YYYY-MM-DD",
    "timeFormat":"HH"

If pathpattern doesn't have a value, we must uses "". Therefore the next two attributes are not neccessary.

 
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTYzMzcyODUxLDEzNDg0NjM0OTksMTM0OD
Q2MzQ5OV19
-->