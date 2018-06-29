FROM g3dev/nodedev:9.11-stretch

WORKDIR /home/node

COPY package.json .
COPY runlint.sh .

RUN npm install

CMD ["/home/node/runlint.sh"]
