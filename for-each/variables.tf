
variable "instance_type" {
    type = map
    default = {
        db = "t3.micro"
        backend = "t2.micro"
        frontend ="t2.micro"
    }

}
 
variable "common_tags" {
    type = map
    default = {  
    Environment = "Dev"    
    project = "expense"
    terraform = "true"

    }
}

#r53 variables
variable "zone_id" {
    default = "Z050427234MTZELQ6G26Y"

}

variable "domain_name" {
    default = "learningdevopsaws.online"

}