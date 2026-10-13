# key_pair

resource aws_key_pair my_key {
      key_name = "terra-key-ec2"
      public_key = file("terra-key-ec2.pub")
}

# VPC & security_groups

resource aws_default_vpc default {
}

resource aws_security_group my_group {
    name = "automate_sg"
    vpc_id = aws_default_vpc.default.id

# inbound rules

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
   }

   ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
   }

# Outbound rules

egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
    Name = "automate_sg"
   }
}
# ec2 instance

resource aws_instance my_instance {
    ami = var.ec2_ami_id
    instance_type = var.ec2_instance_type
    key_name = aws_key_pair.my_key.key_name
    security_groups = [aws_security_group.my_group.name]


root_block_device {
    volume_size = var.ec2_root_block_size
    volume_type = "gp3"
}

tags = {
    Name = "Terraform-EC2"
}
}