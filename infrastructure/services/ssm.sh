echo "--------------------------------------------------------------"
echo "SSM PARAM STORE: Register"
echo "--------------------------------------------------------------"
awslocal ssm put-parameter --name "test" --value "$(cat ./ssm/test.json)" --type "String"