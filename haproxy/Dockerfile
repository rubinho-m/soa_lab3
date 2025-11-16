FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y haproxy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY consul-template /usr/local/bin/consul-template
COPY haproxy.ctmpl /etc/haproxy/haproxy.ctmpl
COPY haproxy.pem /etc/haproxy/haproxy.pem
COPY reload-haproxy.sh /etc/haproxy/reload.sh

RUN chmod +x /usr/local/bin/consul-template
RUN chmod +x /etc/haproxy/reload.sh

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]