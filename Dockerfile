FROM node:0.10.39
RUN apt-get update
ADD . /app
RUN cd /app; npm install
CMD ["node","/app/start.js"]
