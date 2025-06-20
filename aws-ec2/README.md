# AWS EC2

https://github.com/slawekzachcial/kubernetes-the-hard-way-aws

```
VPC_ID=$(aws ec2 create-vpc \
  --cidr-block 10.240.0.0/24 \
  --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=kubernetes-the-hard-way}]' \
  --output text --query 'Vpc.VpcId')

aws ec2 modify-vpc-attribute \
  --vpc-id ${VPC_ID} \
  --enable-dns-support '{"Value": true}'

aws ec2 modify-vpc-attribute \
  --vpc-id ${VPC_ID} \
  --enable-dns-hostnames '{"Value": true}'
  ```
