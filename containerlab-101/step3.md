Deploy the lab:

`containerlab deploy -t srl02.clab.yml`{{execute}}

What this just did:
* Download all the Docker images referenced in the lab topology file
* Instantiate a container (or VM) for each node
* Create network links between the nodes
* (optionally) configure each node, as provided in the lab config

We recommend that you keep your lab topology files in git, for version control purposes.

After waiting for the systems to come online, you can login to the nodes:

`ssh admin@clab-srl02-srl1`{{execute}}
