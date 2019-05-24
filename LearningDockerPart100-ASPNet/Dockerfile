
#---------------------------------------------
#          First Part of the build the project with container
#---------------------------------------------
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


RUN msbuild SingUP.Web.csproj /p:outputpath=c:\out /p:DeployOnBuild=true \
 /p:VSToolsPath=c:\msbuild.microsoft.VisualStudio.Web.targets.14.0.0.0.3\tools\VSToolsPath
# To publish the web app to the output folder


#---------------------------------------------
#          Second Part to run the built project on container
#---------------------------------------------
FROM microsoft/aspnet:windowsservercore


# The default shell to run the instruction is the command shell
# but we can change it to powershell
SHELL ["powershell"]

WORKDIR c:\web-app

# remove the default of IIS and define a site for the app
RUN Remove-Website -Name 'Default web site'; \
    New-Website -Name 'web-app' -port 80 -physicalPath 'C:\web-app'


COPY --from=build-agent c:\out\_PublishedWebsites\SignUp.Web c:\web-app

# RUN powershell start-process .\Signup.msi -wait




