FROM node:10.15.3-alpine

WORKDIR /home/node

COPY index.js index.js

RUN npm init -y; \
	npm install express --save; \
	apk add curl 

CMD ["node", "index.js"]

