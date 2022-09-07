FROM ubuntu:20.04

WORKDIR /usr/src
RUN apt-get update && apt-get install -y curl
RUN curl -OL https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-latest.tar.gz
RUN tar -xf PlaydateSDK-latest.tar.gz 
RUN mv PlaydateSDK-1.12.3 playdate
RUN export PATH=/usr/src/playdate/bin:$PATH

WORKDIR /usr/local/src/
