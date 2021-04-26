1. Get the code

`git clone https://github.com/thecodingmachine/workadventure.git`{{execute}}

2. Fix website URL in Docker compose

`sed -i 's|^DOMAIN=.*|DOMAIN=[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com|g' ~/workadventure/contrib/docker/.env.prod.template`{{execute}}

3. Fix local host

`echo "127.0.0.1 [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com" >> /etc/hosts`{{execute}}

4. Run docker-compose (~2-3 minutes)

`cd ~/workadventure && source contrib/docker/.env.prod.template && DEBUG_MODE=1 docker-compose -f contrib/docker/docker-compose.prod.yaml up`{{execute}}

5. Open a browser window to https://play.[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com

