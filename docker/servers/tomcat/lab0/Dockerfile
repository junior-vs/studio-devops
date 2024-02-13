FROM tomcat:8.0-alpine

LABEL maintainer="valdir"

ADD livraria.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]