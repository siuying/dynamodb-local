# Docker container for AWS DynamoDB Local

Docker container for AWS DynamoDB Local. Based on [Dean Giberson](https://github.com/deangiberson/docker_aws_dynamodb_local) image.

## Usage

### Start a DynamoDB instance

This image includes EXPOSE 8000, so standard container linking will make it automatically available to the linked containers. By default database path is `/var/data`.

``
docker run --name dynamodb -d siuying/dynamodb-local
``

Alternatively you can start a in-memory instance:

``
docker run --name dynamodb -d siuying/dynamodb-local -inMemory
``
