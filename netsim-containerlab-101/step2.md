* Download the topology file:
`wget https://raw.githubusercontent.com/ozgurbulbul/katacoda-scenarios/main/netsim-containerlab-101/topology.yml `{{execute}}

* Prepare the topology:
`netsim-tools/netlab create `{{execute}}

* Launch the lab:
`sudo containerlab deploy -t clab.yml`{{execute}}

* (Optional) Install the Nokia ansible package:
`ansible-galaxy collection install nokia.grpc && python3 -m pip install grpcio protobuf `{{execute}}

* Create the initial configuration:
`netsim-tools/netlab initial `{{execute}}

