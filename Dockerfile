FROM redis:6.2-alpine

WORKDIR /data
EXPOSE 6379

ENV REDIS_PASSWORD 2002101

CMD ["sh", "-c", "redis-server --appendonly yes --requirepass \"$REDIS_PASSWORD\""]
