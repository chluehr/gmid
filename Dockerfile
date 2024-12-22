FROM alpine:edge

RUN echo "@testing https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update
RUN apk add --no-cache gmid@testing

CMD ["gmid", "-f"]

