resource "aws_instance" "db" {
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_name == "db" ? "t3.micro" : "t2.micro"
    
}



resource "aws_security_group" "allow_ssh" {

    name = "allow_sg"
    description = "creating security group"

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

            name = "allow_sg"
            createdby = "Leela"
        }



}