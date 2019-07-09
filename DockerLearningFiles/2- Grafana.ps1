## 1- installing grafana on local machine from https://grafana.com/get
##     I have installed it on my PC
## 2- Use the grafana-cli tool to install Azure Monitor from the commandline
grafana-cli plugins install grafana-azure-monitor-datasource


## These are the lines to have grafana as a container
docker run -d --name=grafana -p 3000:3000 grafana/grafana

docker pull grafana/grafana

docker run -d -P grafana/grafana


docker container ls


docker container logs 43416060d4f4f4cb325366f7209c3c54794d9f52693aef328b539660e2e68732


docker container kill 16c9a7c1e120

docker container rm 16c9a7c1e120
