resource "aws_instance" "db" {
    #count = 3
    count = length([var.instance_name])
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
 
    tags = {
        Name = var.instance_name[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {

    name = "ssh"
    description = "security group"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
         from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }

    tags = {
        Name = "ssh"
        Createdby = "Leela"
    }
}