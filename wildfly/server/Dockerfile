FROM jboss/wildfly
RUN /opt/jboss/wildfly/bin/add-user.sh admin P@102030 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone-full.xml", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
