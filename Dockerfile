FROM node:alpine3.16

WORKDIR /app

RUN apk update && apk upgrade
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY server.js server.js
RUN ["npm", "install"]

EXPOSE 7521

CMD ["npm", "start"]
