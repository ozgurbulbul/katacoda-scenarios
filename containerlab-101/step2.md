Download the [lab example](https://containerlab.srlinux.dev/lab-examples/srl02/) showing a simple 2-node topology.
This example uses the public SR Linux container image with 2 nodes.

`for file in srl02.clab.yml srl1.cfg.json srl2.cfg.json; do
 wget https://raw.githubusercontent.com/srl-labs/containerlab/master/lab-examples/srl02/$file
 done`{{execute}}

Note that the resources provided by the Katacoda environment are limited
