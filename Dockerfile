FROM graylog/graylog:3.2

LABEL maintainer="Vander Zago"

USER root

RUN cp -a /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

USER graylog