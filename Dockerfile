FROM node:0.10.39

RUN apt-get update

WORKDIR /app

# ADD package.json /app
# ADD .bowerrc /app

# Install Mean.JS packages
RUN npm install

# currently only works for development
ENV NODE_ENV development

# Expose ports: server (3000), livereload (35729)
EXPOSE 3000 35729

COPY . /app
CMD ["nodejs","/app/start.js"]
