# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/guides/custom-service-endpoints#localstack
# https://baptiste.bouchereau.pro/tutorial/deploy-localstack-resources-with-terraform/
provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  access_key                  = "fake"
  secret_key                  = "fake"

  endpoints {
    ssm             = "http://localhost:4566"
  }
}

resource "aws_ssm_parameter" "foo" {
  name  = "foo"
  type  = "String"
  value = "bar"
}
