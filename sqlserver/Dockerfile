
# Use the SQL Server 2019 base image from Microsoft
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set the SQL Server environment variables
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=${SA_PASSWORD}

# Create a directory for the SQL Server log files
USER root

# Create a directory for the SQL Server data files
RUN mkdir -p /var/opt/mssql/data

# Start the SQL Server service
CMD /opt/mssql/bin/sqlservr --accept-eula
