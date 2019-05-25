# using DacPac(Database Schema) makes the work easier for sql server
# Therefore we define a visual studio project

FROM sixeyed/msbuild:netfx-4.5.2-ssdt AS builder

# Making a Work Directory in the image for database source 
WORKDIR c:\src\SignUp.Database

# Copy the sql server project from the host to image
COPY src\SignUp.Database  .

RUN msbuild  SignUp.Database.sqlproj \
/p:SQLDBExtentionsRefPath="C:\Microsoft.Data.Tools.Msbuild.10.0.61026\lib\net40" \
/p:SqlServerRedistPath="C:\Microsoft.Data.Tools.Msbuild.10.0.61026\lib\net40"

