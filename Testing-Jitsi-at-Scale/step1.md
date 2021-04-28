# Prepare a Docker config

Since Docker and docker-compose already come preinstalled, this step is simple:

`wget https://raw.githubusercontent.com/jbemmel/katacoda-scenarios/main/Testing-Jitsi-at-Scale/docker-compose.yml`{{execute}}

Run docker-compose:

`docker-compose up`{{execute}}

For higher scale testing (more users), use e.g.

`docker-compose up -d --scale node=2`{{execute}} => 2 browsers per container (you can go up to ~50)
