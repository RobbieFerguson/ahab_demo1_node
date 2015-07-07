FROM node:0.10.39

RUN apt-get update

#WORKDIR .

RUN npm install
ADD . /app
CMD ["nodejs","./app/start.js"]
