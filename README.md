# Purpose
Repository demonstrates the problem with a `mousePressed` event not working
within Chrome inspector. More about the issue [here](https://gitlab.com/DMore/chrome-mink-driver/-/issues/110)

# Runner
Repo contains simple wrapper bash script `run.sh` which makes the replication
easier. It does the follwing steps:
- opens local Chrome browser with a debugging mode
- waits until it can communicate
- runs the simple behat test which opens https://example.com
- waits 20 seconds when you can open chrome inspector (either via
http://localhost:9222 or chrome://inspect)
- after 20 seconds the link "More information..." is being clicked which fails
to perform correctly if you are in inspector

# Demo
There is demonstration video which can be find in the repo's root under [demo.mp4](https://user-images.githubusercontent.com/5792505/119889100-75c64780-bf36-11eb-9e41-25bdb8df25a0.mp4)
