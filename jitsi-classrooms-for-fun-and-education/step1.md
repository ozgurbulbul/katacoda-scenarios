1. Get the code

`git clone https://github.com/thecodingmachine/workadventure.git`{{execute}}

2. Fix website URL in Docker compose OR production env

`sed -i 's|workadventure\.localhost|[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com|g' ~/workadventure/docker-compose.yaml && \
 sed -i 's|workadventure\.localhost|[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com|g' ~/workadventure/.env.template`{{execute}}
`sed -i 's|^DOMAIN=.*|DOMAIN=[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com|g' ~/workadventure/contrib/docker/.env.prod.template`{{execute}}

3. Fix local host

`echo "127.0.0.1 [[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com" >> /etc/hosts`{{execute}}
`echo "127.0.0.1 [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com" >> /etc/hosts`{{execute}}

4. Run docker-compose (~2-3 minutes)

`cd ~/workadventure && DEBUG_MODE=1 docker-compose --env-file .env.template up`{{execute}}
`cd ~/workadventure && DEBUG_MODE=1 NODE_TLS_REJECT_UNAUTHORIZED=0 docker-compose -f contrib/docker/docker-compose.prod.yaml --env-file contrib/docker/.env.prod.template up`{{execute}}

5. Open a browser window to https://play.[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com

