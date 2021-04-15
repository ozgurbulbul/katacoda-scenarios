* Get a sample topology file:

`wget https://raw.githubusercontent.com/ipspace/netsim-tools/master/examples/containerlab.yml`{{execute}}

* Prepare the topology:

`create-topology -t containerlab.yml -p`{{execute}}

* Launch the lab:

`sudo containerlab deploy -t clab.yml`{{execute}}
