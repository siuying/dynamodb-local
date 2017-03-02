FROM openjdk:7-jre
MAINTAINER Francis Chong <francis@goodnotesapp.com>

# Create working space
RUN mkdir /var/dynamodb
WORKDIR /var/dynamodb

# Default port for DynamoDB Local
EXPOSE 8000

# Get the package from Amazon
RUN wget -O /var/dynamodb/latest https://s3-ap-southeast-1.amazonaws.com/dynamodb-local-singapore/dynamodb_local_latest.tar.gz
RUN tar xfz /var/dynamodb/latest

# Default command for image
ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar"]
CMD ["-port", "8000", "-dbPath", "/var/data"]

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME ["/var/data", "/var/dynamodb"]
