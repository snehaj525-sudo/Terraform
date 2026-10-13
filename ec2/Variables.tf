#instance type variable
variable "ec2_instance_type" {
    default = "t3.micro"
    type = string
}

# variable for ami id
variable "ec2_ami_id" {
    default = "ami-0b6d9d3d33ba97d99"
    type = string
}

#root block device variable
variable "ec2_root_block_size" {
    default = 8
    type = number
}