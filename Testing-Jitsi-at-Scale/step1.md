# Prepare a Docker config

Since Docker and docker-compose already come preinstalled, this step is simple:

`wget https://raw.githubusercontent.com/jbemmel/katacoda-scenarios/main/Testing-Jitsi-at-Scale/docker-compose.yml`{{execute}}

Run docker-compose:

`docker-compose up`{{execute}}
`docker-compose up -d --scale node=2`{{execute}} for 2 browsers per container

Open a console to 'torture':

`docker-compose exec torture /bin/bash`{{ execute }}

Run the 'malleus' script, using your own Jitsi Meet instance

`export JITSI_MEET_INSTANCE_URL=https://meet.jit.si/`{{execute}}

`./scripts/malleus.sh --conferences=1 --participants=8 --senders=1 --audio-senders=8 --duration=300 --room-name-prefix=test --hub-url=http://hub:4444/wd/hub --instance-url=$JITSI_MEET_INSTANCE_URL`{{execute}}
