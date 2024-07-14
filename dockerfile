FROM haproxy:3.0.2-bookworm

USER root
RUN apt update && apt install telnet net-tools curl dnsutils postfix msmtp vim -y

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY test.txt test.txt
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENV SMTP_SERVER=example.com

EXPOSE 3333

CMD /start.sh