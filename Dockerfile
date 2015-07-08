FROM node:0.10.39
RUN apt-get update
ADD . /wewef
RUN cd /app; npwem ienstall
CMD ["node","/app/start.js"]