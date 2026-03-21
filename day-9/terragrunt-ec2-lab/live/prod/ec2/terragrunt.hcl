terraform {  
    source = "../../../modules/ec2"
}
inputs = {  
    region        = "us-east-1"  
    instance_type = "t3.micro"  
    instance_name = "Prod-EC2-Instance"
}