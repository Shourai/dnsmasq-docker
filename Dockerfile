FROM alpine

EXPOSE 53/TCP
EXPOSE 53/UDP

VOLUME /root/data/

WORKDIR /root/data/

COPY run.sh /root/bin/run.sh

RUN apk --no-cache add dnsmasq && \
chmod 700 /root/bin/run.sh

HEALTHCHECK CMD exit $(nslookup www.google.com localhost|grep -c "timed out")

ENTRYPOINT /root/bin/run.sh
