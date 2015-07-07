FROM node:0.10.39

RUN apt-get update
COPY . /app

RUN cd /app; npm install
CMD ["nodejs", "/app/start.js"]
