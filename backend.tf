terraform {
  backend "s3" {
    bucket = "iti-s3bucket-tfstate" # iti-s3bucket-tfstate is the name of the S3 I created manually
    key    = "~/Documents/Terraform/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state_lock" # state_lock is the name of the dynamodb I created manually
  }
}

