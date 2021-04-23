Instead of cloning git, download the latest stable release:
`wget -qO- https://github.com/jitsi/docker-jitsi-meet/archive/refs/tags/stable-5765-1.tar.gz | tar xvz`{{ execute }}

Enter the directory and copy the example settings:
`cd docker-jitsi-meet-stable-5765-1; cp env.example .env`{{ execute }}

Optionally, generate strong passwords:
`./gen-passwords.sh`{{execute}}

Create required CONFIG directories in user home:
`mkdir -p ~/.jitsi-meet-cfg/{web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}`{{ execute }}

Run Docker-compose up:
`docker-compose up -d`{{ execute }}

Access the web UI at port 8443:
https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com

<a href="https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com" target="_blank">Blank target?</a>
