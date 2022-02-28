* Get a sample topology file:

`wget https://raw.githubusercontent.com/ipspace/netsim-tools/master/examples/containerlab.yml`{{execute}}

* Temporary solution:
`mv containerlab.yml topology.yml`{{execute}}

* Prepare the topology:

`netsim-tools/netlab up `{{execute}}

* Launch the lab:

`sudo containerlab deploy -t clab.yml`{{execute}}
