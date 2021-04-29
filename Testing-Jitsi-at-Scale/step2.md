# Running tests

Open a console to 'torture' in a second terminal:

`docker-compose exec torture /bin/bash`{{ execute T2 }}

Define target Jitsi server to connect to:
`export JITSI_MEET_INSTANCE_URL=https://meet.jit.si/`{{execute T2}}
`export SENDERS=3`{{execute T2}}

Join a test meeting in your browser: https://meet.jit.si/jitsi-at-scale-test0

Get some more interesting audio samples:
`wget https://www.pacdv.com/sounds/people_sound_effects/crowd_outside_1.wav -O resources/fakeAudioStream.wav`{{execute T2}}
`wget https://www.pacdv.com/sounds/people_sound_effects/crowd_outside_4.wav -O resources/fakeAudioStream.wav`{{execute T2}}
`wget https://www.pacdv.com/sounds/people_sound_effects/party_crowd_1.wav -O resources/fakeAudioStream.wav`{{execute T2}}
`wget https://www.pacdv.com/sounds/people_sound_effects/applause-3.wav -O resources/fakeAudioStream.wav`{{execute T2}}

Run the 'malleus' script, using your target Jitsi Meet instance
`./scripts/malleus.sh --conferences=1 --participants=8 --senders=$SENDERS --audio-senders=8 --duration=300 --room-name-prefix=jitsi-at-scale-test --hub-url=http://hub:4444/wd/hub --instance-url=$JITSI_MEET_INSTANCE_URL`{{execute T2}}

(Note: the number of users appears to be controlled by the 'node=x' parameter when starting the container)
