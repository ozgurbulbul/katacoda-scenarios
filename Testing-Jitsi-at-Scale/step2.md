# Running tests

Open a console to 'torture' in a second terminal:

`docker-compose exec torture /bin/bash`{{ execute T2 }}

Run the 'malleus' script, using your own Jitsi Meet instance

`export JITSI_MEET_INSTANCE_URL=https://meet.jit.si/`{{execute T2}}
`export SENDERS=2`{{execute T2}}

Join a test meeting in your browser: https://meet.jit.si/jitsi-scale-test0

`./scripts/malleus.sh --conferences=1 --participants=8 --senders=$SENDERS --audio-senders=8 --duration=300 --room-name-prefix=jitsi-scale-test --hub-url=http://hub:4444/wd/hub --instance-url=$JITSI_MEET_INSTANCE_URL`{{execute T2}}
