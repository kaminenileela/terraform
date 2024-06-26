#ec2 variables
variable "instance_name" {
    type = list
    default = ["db", "backend", "frontend"]

}

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"

}

variable "common_tags" {

    default = {
        Project = "expense"
        Environment = "Dev"
        terraform = "True"

    }


}

#sg variables
variable "sg_name" {
    type = string
    default = "sg"
}

variable "sg_desc" {
    type = string
    default = "security group"
}

variable "ssh_port" {
    type = number
    default = 22
}


variable "ssh_protocol" {
    type = string
    default = "tcp"
}


variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
    default = "Z050427234MTZELQ6G26Y"

}

variable "domain_name" {
    default = "learningdevopsaws.online"

}