provider "aws" {
    region = "us-east-1"   # set your desired AWS region
}


    

resource "aws_instance" "this" {
  ami                     = "ami-0dcc1e21636832c5d"
  instance_type           = "m5.large"
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost"
  tenancy                 = "host"
}
