# Use a imagem do Cassandra com versão fixa e estável
FROM cassandra:3.11.10

# Exponha a porta padrão do Cassandra
EXPOSE 9042

# Defina as variáveis de ambiente para as credenciais de acesso
ENV CASSANDRA_USERNAME=$CASSANDRA_USERNAME
ENV CASSANDRA_PASSWORD=$CASSANDRA_PASSWORD

# Copie o arquivo de configuração personalizado para o diretório de configuração do Cassandra
COPY cassandra.yaml /etc/cassandra/cassandra.yaml

# Inicie o serviço do Cassandra
CMD ["cassandra", "-f"]
