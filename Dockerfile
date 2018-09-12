FROM alpine:3.8

RUN apk add --no-cache su-exec

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]
CMD [ "/bin/sh" ]