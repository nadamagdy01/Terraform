# Pre-requisite linux commands:
# -----------------------------
# sudo apt update
# sudo apt install awscli
# aws --version
/* aws configure (to enter the credentials file 'access key' & 'secret key' & 
 create config file)*/ 



# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}


