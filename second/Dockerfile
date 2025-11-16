FROM quay.io/wildfly/wildfly:latest

COPY ROOT.war /opt/jboss/wildfly/standalone/deployments/
COPY standalone.xml /opt/jboss/wildfly/standalone/configuration/standalone.xml

RUN /opt/jboss/wildfly/bin/add-user.sh -u admin -p admin -e