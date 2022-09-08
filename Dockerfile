FROM --platform=linux/amd64 ubuntu:20.04

WORKDIR /usr/src
RUN apt-get update && apt-get install -y curl libpng-dev
RUN curl -OL https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-latest.tar.gz
RUN tar -xf PlaydateSDK-latest.tar.gz 
RUN mv PlaydateSDK-1.12.3 playdate
ENV PATH="${PATH}:/usr/src/playdate/bin"
ENV PLAYDATE_SDK_PATH="/usr/src/playdate"

WORKDIR /usr/local/src/

ENTRYPOINT  ["/usr/src/playdate/bin/pdc"]
