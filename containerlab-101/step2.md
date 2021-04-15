Download the [CLOS](https://containerlab.srlinux.dev/lab-examples/min-clos/) example showing a simple leaf-spine topology

`wget https://raw.githubusercontent.com/srl-labs/containerlab/master/lab-examples/clos01/clos01.clab.yml`{{execute}}

Change the lab to use the FRR image:
`sed -i 's|srlinux|frrouting/frr:latest|g' clos01.clab.yml`{{execute}}

Create a dummy license file:
`touch license.key`{{execute}}
