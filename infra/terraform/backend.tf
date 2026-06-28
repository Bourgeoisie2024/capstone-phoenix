terraform {
  backend "s3" {
    bucket         = "alameendevops-capstone-tfstate"
    key            = "infrastructure/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "alameendevops-capstone-locks"
    encrypt        = true
  }
}
