FROM alpine:3.3
MAINTAINER Liam Norton

ENV VERSION 0.8.6

RUN \
  apk update &&\
  apk upgrade &&\
  apk add --update curl unzip &&\
  cd /tmp &&\
  curl -LO https://releases.hashicorp.com/packer/${VERSION}/packer_${VERSION}_linux_amd64.zip &&\
  unzip *.zip &&\
  rm -f *.zip &&\
  mv packer* /usr/local/bin

ENTRYPOINT ["/usr/local/bin/packer"]
