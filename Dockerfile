FROM node:0.10.39

RUN apt-get update

WORKDIR .

ADD . /app
RUN pwd
RUN npm install
CMD ["nodejs","./app/start.js"]
