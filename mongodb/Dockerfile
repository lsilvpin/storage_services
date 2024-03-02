
# Dockerfile para MongoDB
FROM mongo:4.4.4-bionic

ENV MONGO_INITDB_ROOT_USERNAME=${MONGO_DB_USERNAME:-admin}
ENV MONGO_INITDB_ROOT_PASSWORD=${MONGO_DB_PASSWORD:-password}

# Expose the MongoDB port
EXPOSE 27017

# Set user to root
USER root

# Start MongoDB
CMD ["mongod"]
