FROM node:4

# get dependencies
ENV DEPENDENCIES="libsodium-dev libzmq3-dev"
RUN apt update \
  && apt install -y $DEPENDENCIES

# change to user "node"
USER node
WORKDIR /home/node

# install insight services
ENV BITCORE_REPO=https://git@github.com/DeckerSU/bitcore-node-komodo
ENV API_REPO=https://git@github.com/DeckerSU/insight-api-komodo
ENV bitcoreNode=./node_modules/bitcore-node-komodo/bin/bitcore-node
RUN npm install git+$BITCORE_REPO \
  && $bitcoreNode create ACexplorer \
  && cd ACexplorer \
  && $bitcoreNode install git+$API_REPO

RUN sed -i 's/3 \* 1e8/1 \* 1e4/g' \
  ACexplorer/node_modules/insight-api-komodo/lib/blocks.js

# runtime
COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]

