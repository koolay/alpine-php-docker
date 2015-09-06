FROM 1science/alpine:3.1

EXPOSE 3306

RUN apk --update add mysql && \
    mkdir -p /opt/data && \
    mkdir -p /etc/mysql/conf.d && \

VOLUME ["/opt/data"]

ADD mysql.service /etc/service/mysql/run
RUN chown mysql -R /opt/data/
RUN chown mysql -R /etc/mysql/
RUN chmod 775 -R /etc/service/mysql/

CMD ["s6-svscan", "-t0", "/etc/service"]
