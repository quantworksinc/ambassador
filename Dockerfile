FROM nginx:alpine

LABEL maintainer="Will Palmer <will.palmer@quantworks.com>"

ENV DEBUG=""
ENV USERNAME="user"
ENV PASSWORD="pass"
ENV DESTINATION="https://www.google.com"

WORKDIR /tmp
RUN apk add --update openssl
ADD entrypoint.sh /usr/local/bin/
ADD nginx.tpl.conf .

ENTRYPOINT ["entrypoint.sh"]
