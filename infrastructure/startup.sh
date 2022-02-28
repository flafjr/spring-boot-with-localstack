#!/bin/bash

sh ./stop.sh

# awslocal secretsmanager create-secret --name "test" --secret-string "$(cat ./test.json)"
# awslocal secretsmanager list-secrets --output=text

# awslocal ssm put-parameter --name "test" --value "$(cat ./test.json)" --type "String"
# awslocal ssm describe-parameters --output=text

# https://lobster1234.github.io/2017/04/05/working-with-localstack-command-line/
printf "Starting ...\n\n"
docker-compose up -d
docker-compose logs
printf "Done!\n"
