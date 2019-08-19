FROM arm32v7/alpine:edge
COPY qemu-arm-static /usr/bin

RUN apk --no-cache add dnsmasq

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
