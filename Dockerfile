FROM alpine:latest
LABEL maintainer=milobahg
RUN apk add --no-cache openntpd
COPY ntpd.conf /etc/ntpd.conf
EXPOSE 123/udp
ENTRYPOINT [ "/usr/sbin/ntpd", "-v", "-d", "-s" ]
