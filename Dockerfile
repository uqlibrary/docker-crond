FROM uqlibrary/docker-base:1

RUN \
 yum install -y cronie && \
 yum clean all

COPY etc/crontab /etc/crontab

CMD /usr/sbin/crond -n -s
