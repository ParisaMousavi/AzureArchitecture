# first clone from Github for the code
git clone https://github.com/Azure-Samples/dotnet-core-api.git
# for any further example for usage we can refer to this repository

#change to the forder
cd dotnet-core-api

#run the .Net core
dotnet run

'https://Developer@2019@parisfrontend.scm.azurewebsites.net/ParisFrontEnd.git'
'https://Developer@2019@parisbackend.scm.azurewebsites.net/ParisBackEnd.git'

git remote add backend001 'https://Developer@2019@parisbackend.scm.azurewebsites.net/ParisBackEnd.git'

git remote -v # for list

git remote rm backend001  # for remove

# git push  <REMOTENAME> <BRANCHNAME> 
git push backend001 master