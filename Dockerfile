FROM ubuntu:14.04
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs npm
RUN sudo install -y npm 
COPY . /src
RUN cd /src
CMD ["nodejs","/src/start.js"]
