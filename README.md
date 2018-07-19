The files in this directory are an example of a quick start to work with the Docker image (folder "docker").

## Usage:

#### Prerequisites: 
Docker CE.

#### Steps:
1. Clone this repo: https://github.com/DeckerSU/insight-ui-komodo changing the name from "insight-ui-komodo" to something like "insight-ui-oot" (where "oot" is your coin ticker symbol all lowercase).
2. Build the docker image: 
```
cd docker
docker build -t kmdplatform/insight .
```
3. Start the container specifying your coin symbol:
```
cd ..
./insight-start.sh OOT
```
4. Run your daemon start script (insight parameters are defined here): `./oot-start-daemon.sh`
5. Wait until it's fully synchronized.
6. Customize your UI repo. 
