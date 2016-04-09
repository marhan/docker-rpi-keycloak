FROM larmog/armhf-alpine-java:jdk-8u73
MAINTAINER Markus Hanses <me@markushanses.de>

WORKDIR /data
RUN wget http://www.redhat.com/j/elqNow/elqRedir.htm?ref=http://downloads.jboss.org/keycloak/1.9.1.Final/keycloak-1.9.1.Final.tar.gz
RUN tar -xvfp keycloak-1.9.1.Final.tar.gz
RUN rm keycloak-1.9.1.Final.tar.gz

CMD ["/data/keycloak-1.9.1.Final/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080 9990