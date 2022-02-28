* Get a sample topology file:

`wget https://raw.githubusercontent.com/ipspace/netsim-tools/master/examples/containerlab.yml`{{execute}}

* Temporary solution:
`mv containerlab.yml topology.yml`{{execute}}

* Prepare the topology:
`netsim-tools/netlab create `{{execute}}

* Replace ceos with SRLinux
`sed -i 's/eos/srlinux/' topology.yml `{{execute}}

* Launch the lab:
`sudo containerlab deploy -t clab.yml`{{execute}}
