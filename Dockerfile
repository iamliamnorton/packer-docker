FROM alpine:3.3
MAINTAINER Liam Norton

ENV PACKER_VER 0.8.6

RUN \
  apk update && apk upgrade &&\
  apk add --update curl unzip &&\
  cd /tmp &&\
  curl -LO https://dl.bintray.com/mitchellh/packer/packer_${PACKER_VER}_linux_amd64.zip &&\
  unzip *.zip && rm -f *.zip &&\
  mv packer* /usr/local/bin
