FROM alpine:3.10

RUN apk add --no-cache \
	bash \
	tinyproxy \
    openvpn

COPY run.sh /opt/docker-tinyproxy/run.sh

ENV OPENVPN=/etc/openvpn
VOLUME ["/etc/openvpn"]

ENTRYPOINT ["/opt/docker-tinyproxy/run.sh"]
