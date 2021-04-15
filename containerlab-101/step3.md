Deploy the lab:

`containerlab deploy -t clos01.clab.yml`{{execute}}

What this just did:
* Download all the Docker images referenced in the lab topology file
* Instantiate a container (or VM) for each node
* Create network links between the nodes
* (optionally) configure each node, as provided in the lab config

We recommend that you keep your lab topology files in git, for version control purposes.
