FROM ubuntu:22.04

RUN apt update -y && \
  apt install -y nftables && \
  apt clean && rm -rf /var/lib/{apt,dpkg,cache,log}/

VOLUME ["/etc/nftables"]

CMD ["nft", "-f", "/etc/nftables.conf"]