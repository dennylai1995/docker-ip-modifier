## Docker network IP range modifier

### Some facts
1. The default IP range of docker network is
    - All private IP ranges except 10.x.x.x
    - Max. 31 bridge networks
2. Keyword definitions in `daemon.json`
    - `bip` defines the IP range for network interface - docker0
    - `default-address-pools` defines IP range for bridge networks
3. Source: https://straz.to/2021-09-08-docker-address-pools/

### Quick deployment
- just run `sudo bash deploy.sh`

### Manual deployment
1. `sudo cp daemon.json /etc/docker`
2. `sudo systemctl restart docker`

### Tested platform
- Ubuntu 20.04.6 LTS
