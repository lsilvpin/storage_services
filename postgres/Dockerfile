# Use the PostgreSQL 13 base image from Docker Hub
FROM postgres:13

# Set the PostgreSQL environment variables
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_DB=${POSTGRES_DB}

# Copy the SQL file to the container
USER root

# Start the PostgreSQL service
CMD ["postgres"]
