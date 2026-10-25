variable "ami_id" {
    type = string
    default = "ami-0055977a6e828a4f4"
    description = "AMI id of the EC2 instance"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
    description = "Instance size"

  validation {
    condition = contains(["t3.micro", "t3.small", "t3.medium"],var.instance_type)
    error_message = "Instance type must be t3.micro, t3.small, or t3.medium."
  } 
}

variable "sg_ids" {
    type =  list
}

variable "tags" {
    type = map  
}