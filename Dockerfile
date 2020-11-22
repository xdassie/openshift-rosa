FROM alpine:latest
RUN apk -v --update add \
  aws-cli               \
  wget                  \
  && rm /var/cache/apk/*
RUN wget https://github.com/openshift/moactl/releases/download/v0.1.1/rosa-linux-amd64  
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["/bin/sh"]
VOLUME /root/.aws
