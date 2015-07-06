FROM node:0.10.39

RUN apt-get update

WORKDIR /app

ADD . /app

RUN npm install

# currently only works for development
ENV NODE_ENV development

CMD ["nodejs","/app/start.js"]
