variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "mv-rag-system-dev-01"
}

variable "ec2props" {
    type = map(string)
    default = {
    region = "us-east-1"
    vpc = "vpc-0f4d1fa48ce146465"
    ami = "ami-08a0d1e16fc3f61ea"
    itype = "t2.2xlarge"
    subnet = "subnet-81896c8e"
    publicip = true
    keyname = "myseckey"
    secgroupname = "launch-wizard-2"
    }
}