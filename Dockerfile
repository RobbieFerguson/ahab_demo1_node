FROM ubuntu:14.04
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs
COPY . /src
RUN cd /src
RUN sudo npm install
CMD ["nodejs","/src/start.js"]
