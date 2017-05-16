FROM marhan/rpi-java8
MAINTAINER Markus Hanses <me@markushanses.de>

WORKDIR /data
RUN wget http://downloads.jboss.org/keycloak/3.1.0.Final/keycloak-3.1.0.Final.tar.gz \
      && tar xvfp keycloak-3.1.0.Final.tar.gz \
      && rm keycloak-3.1.0.Final.tar.gz

COPY config/keycloak-add-user.json /data/keycloak-3.1.0.Final/standalone/configuration/keycloak-add-user.json

CMD ["/data/keycloak-3.1.0.Final/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080 9990
