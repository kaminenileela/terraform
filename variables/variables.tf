#1.command line
#2.tfvars
#3.Environment variable
#4.variable default value

variable "image_id" {
    type        = string
    default     = "ami-090252cbe067a9e58"
    #if default is not given terraform will ask id at prompt
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    default = "t2.micro"
    type    = string
} 


variable "tags" {

    default = {
        Name = "DB"
        Project = "expense"
        Environment = "Dev"
        Module = "DB"

    }
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    
    default = ["0.0.0.0/0"]
}



