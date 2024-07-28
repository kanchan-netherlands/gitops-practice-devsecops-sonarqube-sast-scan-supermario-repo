FROM tomcat:9.0.14-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*
COPY webapp/ /usr/local/tomcat/webapps/ROOT/
RUN In -sf /bin/bash /bin/sh
EXPOSE 8080
CMD ["catalina.sh", "run"]