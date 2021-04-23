Instead of cloning git, download the latest stable release:
`wget -qO- https://github.com/jitsi/docker-jitsi-meet/archive/refs/tags/stable-5765-1.tar.gz | tar xvz`{{ execute }}

Enter the directory and copy the example settings:
`cd docker-jitsi-meet-stable-5765-1; cp env.example .env; echo "PUBLIC_URL=https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com:443" >> .env`{{ execute }}

Optionally, generate strong passwords:
`./gen-passwords.sh`{{execute}}

Create required CONFIG directories in user home:
`mkdir -p ~/.jitsi-meet-cfg/{web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}`{{ execute }}

Run docker-compose up:
`docker-compose up -d`{{ execute }}

If you are curious about the config file: `more docker-compose.yml`{{execute}}

Access the web UI at port 8443 (note: meetings are unstable, XMPP not reachable):
https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com
