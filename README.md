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

<div align="center" style="background-color:#f0f0f0; padding:20px;">

# Terraform Project 1

## Pre-requisite Linux Commands:

- Update the package list:

- Install AWS CLI:

- Verify AWS CLI installation:

- Configure AWS CLI (To add the credentials file & create the config file).
Note: The credentials file contains the 'access key' & the 'secret key'.

## Initial Requirements

- Create a provider file.
- Create a backend file.

## Networking

1. Create VPC.
2. Create an Internet Gateway.
3. Create a Public Route Table.
4. Create a Private Route Table.
5. Create a Public Route.
6. Attach the Public Route Table to subnets.
7. Create a NAT Gateway and attach it to private subnets.

## Compute

1. Create a security group that allows SSH from 0.0.0.0/0.
2. Create a security group that allows SSH and port 3000 from VPC CIDR only.
3. Create an EC2 (bastion) instance in the public subnet with the security group from step 2.
4. Create an EC2 (application) instance in the private subnet with the security group from step 3.
5. Add a KeyPair for instances.
6. Create an S3 bucket (to save the tfstate file).
7. Configure remote backend and state locking using DynamoDB.

</div>
