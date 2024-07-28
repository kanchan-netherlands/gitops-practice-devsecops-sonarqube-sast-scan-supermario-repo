FROM tomcat:9.0.14-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapp/ROOT/*
COPY webapps/ /usr/local/tomcat/webapp/ROOT/
RUN In -sf /bin/bash /bin/sh
EXPOSE 8080
CMD ["catalina.sh", "run"]