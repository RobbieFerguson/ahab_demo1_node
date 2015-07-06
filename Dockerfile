FROM ubuntu:14.04
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs npm
RUN sudo $(which npm) install
COPY . /src
RUN cd /src
CMD ["nodejs","/src/start.js"]
