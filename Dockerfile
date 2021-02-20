FROM    alpine:3.13.2

ENV     LANG C.UTF-8

RUN     apk update && apk add --no-cache syslog-ng && rm -rf /tmp/* /var/cache/*  /root/.cache /root/.ash_history

EXPOSE 514/udp
EXPOSE 601/tcp
#EXPOSE 6514/tcp

#3.30.1
#COPY syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

#ENTRYPOINT ["/usr/sbin/syslog-ng", "-F"]