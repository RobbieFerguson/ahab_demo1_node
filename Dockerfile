FROM node:0.10.39

RUN apt-get update

WORKDIR .

ADD package.json /app
# ADD .bowerrc /app

ADD . /app
RUN npm install
CMD pwd
CMD ["nodejs","/app/start.js"]
