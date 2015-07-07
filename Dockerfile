FROM node:0.10.39
RUN apt-get update
ADD . /app
RUN npm install
RUN cd /app; npm install
CMD ["nodejs","/app/start.js"]
