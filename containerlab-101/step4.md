After waiting for the systems to come online, login to one of the nodes using the default 'admin' account:

`sshpass -padmin ssh admin@clab-srl02-srl1`{{execute}}

Using the SR Linux CLI, you can enter commands to examine the configuration:

`info /network-instance default`{{execute}}
`info /interface ethernet-1/1`{{execute}}
`ping 192.168.0.1 network-instance default`{{execute}}
