podman run -p 3003:3003 \
    -v /var/folders/p2/_lbg58rx0gj25vm3z8r890hr0000gn/T/podman/podman-machine-default-api.sock:/var/run/docker.sock \
    -v /Users/jakob.dittrich/Test:/usr/local/test \
    localhost/simple-react-test:latest