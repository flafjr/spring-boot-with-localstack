echo "--------------------------------------------------------------"
echo "SECRETS MANAGER: Register"
echo "--------------------------------------------------------------"
awslocal secretsmanager create-secret --name "test" --secret-string "$(cat ./secretsmanager/test.json)"