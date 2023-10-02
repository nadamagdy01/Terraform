<div align="center">
  <h1 style="color: red;">Terraform Project 1</h1>
</div>

![Image Alt Text](https://github.com/nadamagdy01/Terraform/blob/46aad55ebdc272567101509e98c02bcfe1069779/infrastructure.png)


## <span style="color: green;">Pre-requisite Linux Commands:</span>

- **Update the package list:**
  
  - sudo apt update
- **Install AWS CLI:**
  - sudo apt install awscli
- **Verify AWS CLI installation:**
  - aws --version

- Configure AWS CLI (To add the credentials file & create the config file).
  - aws configure
    <span style="color: blue;">> Note: The credentials file contains the 'access key' & the 'secret key'.</span>

## <span style="color: green;">Initial Requirements</span>

- Create a provider file.
- Create a backend file.

## <span style="color: green;">Networking</span>

1. Create VPC.
2. Create an Internet Gateway.
3. Create a Public Route Table.
4. Create a Private Route Table.
5. Create a Public Route.
6. Attach the Public Route Table to subnets.
7. Create a NAT Gateway and attach it to private subnets.

## <span style="color: green;">Compute</span>

1. Create a security group that allows SSH from 0.0.0.0/0.
2. Create a security group that allows SSH and port 3000 from VPC CIDR only.
3. Create an EC2 (bastion) instance in the public subnet with the security group from step 2.
4. Create an EC2 (application) instance in the private subnet with the security group from step 3.
5. Add a KeyPair for instances.
6. Create an S3 bucket (to save the tfstate file).
7. Configure remote backend and state locking using DynamoDB.

