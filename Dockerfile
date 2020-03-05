FROM graylog/graylog:3.2

ARG USER
ARG PASS
ARG URL

LABEL maintainer="vander.alves@inmetrics.com.br"

USER root

COPY src/ /tmp/

RUN chmod +x /tmp/sh/create_input.sh

USER graylog

CMD ["/tmp/sh/create_input.sh","${USER}","${PASS}","${URL}"]