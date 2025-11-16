FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y haproxy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY haproxy.pem /etc/haproxy/haproxy.pem
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

CMD ["haproxy", "-db", "-f", "/etc/haproxy/haproxy.cfg"]