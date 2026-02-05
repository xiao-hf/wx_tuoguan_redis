# 使用官方 Redis 镜像作为基础镜像
FROM redis:6.2-alpine

# 设置工作目录
WORKDIR /data

# 复制自定义配置文件到容器中
# 如果你有自定义的 redis.conf 文件，可以取消注释以下行并确保文件存在
# COPY redis.conf /usr/local/etc/redis/redis.conf

# 暴露 Redis 默认端口
EXPOSE 6379

# 设置 Redis 密码（可选）
# 如果你需要设置密码，取消注释以下行并替换为你自己的密码
ENV REDIS_PASSWORD 321wsx

# 启动 Redis 服务
# 使用 sh -c 动态传递环境变量
CMD ["sh", "-c", "redis-server --requirepass ${REDIS_PASSWORD}"]
