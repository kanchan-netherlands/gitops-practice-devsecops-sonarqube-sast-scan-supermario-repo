#use an Official base Image
FROM tomcat:9.0.14-jre8-alpine
#details about the writer of the dockerfile
LABEL maintainer="kanchan123@gmail.com"
#Remove to default tomacat application 
RUN  rm -rf /usr/local/tomcat/webapps/ROOT/*
#Copy the your webapp dir code to tomcat webapp dir
COPY webapp/ /usr/local/webapps/ROOT/
# Change the default shell to bash 
RUN ln -sf /bin/bash /bin/sh
#Default Tomcat port
EXPOSE 8080
# Start the Tomcat when the container
CMD [ "catalina.sh", "run" ]