FROM java:8-jre

MAINTAINER Naoki Takezoe <takezoe [at] gmail.com>

ADD https://github.com/gitbucket/gitbucket/releases/download/4.20.0/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

# Port for web page
EXPOSE 8080
# Port for SSH access to git repository (Optional)
EXPOSE 29418

ENV PORT=8080 PREFIX=/ HOST=$(hostname) GITBUCKET_HOME=/gitbucket

COPY startup.sh /opt/startup.sh

CMD ["/opt/startup.sh"]

