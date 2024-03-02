
# Use a imagem base do Redis com a versão fixa
FROM redis:6.2.5

# Exponha a porta padrão do Redis
EXPOSE 6379

# Defina as variáveis de ambiente para as credenciais de acesso ao Redis
ENV REDIS_HOST=$REDIS_HOST
ENV REDIS_PORT=$REDIS_PORT
ENV REDIS_PASSWORD=$REDIS_PASSWORD

# Set user to root
USER root

# Copie o arquivo de configuração personalizado para o container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Defina o arquivo de configuração personalizado como o arquivo de configuração padrão do Redis
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
