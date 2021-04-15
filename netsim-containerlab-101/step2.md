Create a sample topology:
```
cat > topology.yml << EOF
provider: clab
defaults:
  device: eos

nodes:
- s1
- s2

links:
- s1-s2
EOF
```{{execute}}
