1. Get the code

`git clone https://github.com/thecodingmachine/workadventure.git`{{execute}}

2. Fix website URL in Docker compose

`sed -i 's/workadventure.localhost/[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/g' ~/workadventure/docker-compose.yaml`{{execute}}

2. Run docker-compose

`cd ~/workadventure && DEBUG_MODE=1 docker-compose up`{{execute}}

3. Open a browser window to https://play.[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

