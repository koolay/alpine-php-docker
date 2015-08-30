
FROM 1science/alpine:3.1

# Install redis
RUN apk add --update redis && \
    rm -rf /var/cache/apk/* && \
    mkdir /data && \
    chown -R redis:redis /data && \
    echo -e "include /etc/redis-local.conf\n" >> /etc/redis.conf

ADD conf/redis.conf /etc/redis.conf
ADD conf/redis-local.conf /etc/redis-local.conf
ADD redis.service /etc/service/redis/run

RUN chmod 775  -R /etc/service/redis/
RUN chmod 775 /etc/redis-local.conf

VOLUME ["/data"]

# Expose the ports for redis
EXPOSE 6379

# Run services located in /etc/service directory
CMD ["s6-svscan", "-t0", "/etc/service"]
