FROM ubuntu:14.04
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs
RUN sudo npm install
COPY . /src
RUN cd /src
CMD ["nodejs","/src/start.js"]
