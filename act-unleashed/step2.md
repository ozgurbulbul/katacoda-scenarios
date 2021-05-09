# Prs2sim and [IRSIM](http://opencircuitdesign.com/irsim/index.html)

3. Run Prs2sim to generate simulator files (see https://avlsi.csl.yale.edu/act/doku.php?id=intro_example:gates)

`prs2sim microstage.act test`{{ execute }}

4. Obtain a sample test scenario

`curl https://raw.githubusercontent.com/jbemmel/katacoda-scenarios/main/act-unleashed/sample/microstage.irsim.cmd -o microstage.irsim.cmd`{{ execute }}

5. Start IRSIM using VNC

`web_irsim.sh scmos30 test.sim test.al -@ microstage.irsim.cmd`{{ execute }}
