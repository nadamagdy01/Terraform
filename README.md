**# Terraform Project 1** 

**## Pre-requisite linux commands:**

### sudo apt update
### sudo apt install awscli
### aws --version
### aws configure (To add the credentials file & create the config file) 
#### Note: credentials file contains the'access key' & the 'secret key')

**## Initial requirements**
### create provider file
### create backend file


**## Networking**

### 1- create vpc
### 2- create internet gateway
### 3- create public route table
### 4- create private route table
### 5- create public route
### 6- attach public route table to subnets 
### 7- create nat gateway and attach it to private subnets


**##Compute**

### 1- create security group which allow ssh from 0.0.0.0/0
### 2- create security group that allow ssh and port 3000 from vpc cidr only
### 3- create ec2(bastion) in public subnet with the security group of number 7 here
### 4- create ec2(application) private subnet with security group of number 8 here
### 5- Add KeyPair for instances
### 6- create S3 bucket (To save in it the tfstate file)
### 7- configure remote backend and configure state locking using dynamo db

