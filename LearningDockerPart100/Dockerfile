

FROM sixeyed/msbuild:netfx-4.5.2-webdeploy AS build-againt
# build-againt -> is a label to make it easier for us
# to access it later in docker files. 


WORKDIR c:\src\Signup.Web
# Here is for creatring a directory and subdirectory for wbe project


COPY src\Signup.Web\packages.config .
# Buils is done in two steps. First is copying the packages.config 
# from local machine into the image.


RUN nuget restore packages.config -PackagesDirectory ..\packages
# Restore the packages of the project and specify the path
# that msbuild be able to find them.

COPY src\ c:\src
# Copy the rest of the source code which has the restored packages in it.


RUN msbuild SingUP.Web.csproj
# 

FROM microsoft/aspnet:windowsservercore

COPY Output/Signup.msi .

RUN powershell start-process .\Signup.msi -wait




