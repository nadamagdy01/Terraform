# To build another infrastructure in same account but may be in another region/ cidr/ ...
# We can create multi infrastucture by the same files but by creating multi .tfvars files
 
 
 cidr = "10.0.0.0/16"
 ami_id = "ami-0fc5d935ebf8bc3bc"
 instance_type = "t2.large"
 sub1_pub_cidr = "10.0.0.0/24"
 sub2_pub_cidr = "10.0.2.0/24"
 sub1_priv_cidr = "10.0.1.0/24"
 sub2_priv_cidr = "10.0.3.0/24"
 region = "eu-central-1"