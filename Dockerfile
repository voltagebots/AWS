FROM node:alpine
LABEL Description="Docker Image for Nodejs" Vendor="Nautilus Tech" Version="1.0"
# install node
RUN apk add --no-cache nodejs
RUN apk update && apk add yarn curl bash python g++ make && rm -rf /var/cache/apk/*
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .

CMD ["npm", "run", "start"]