FROM openshift/origin-cli:v4.0.0
#RUN apk -v --update add \
#  aws-cli               \
#  wget                  \
#  bash                  \
#  && rm /var/cache/apk/*
#WORKDIR /bin  
RUN cd /bin && wget https://github.com/openshift/moactl/releases/download/v1.0.5/rosa-linux-amd64  && chmod 555 /bin/rosa-linux-amd64 && ln -s /bin/rosa-linux-amd64 /bin/rosa 
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["/bin/sh"]
VOLUME /root/.aws
