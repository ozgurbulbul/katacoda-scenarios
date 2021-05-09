# irsim test commands
ana test/a
ana test/r
ana test/a2
ana test/r2

# Broken...
# ana test/s[3]/a2
# ana test/s[3]/r2
h Vdd!
l GND!
s
l test/a
l test/r
l test/a2
l test/r2
s
h test/a
s 

