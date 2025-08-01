
variable "instance_type" {
    type = string
  default = "t3.micro"
    description = "instance _size"
}

variable "sg_id" {
  type = list
  default = ["sg-0aa5c38e0976442ad"]
}

variable "tags" {
  type= map
  default = {
    Name= "roboshop_cart"
    terraform = true
    Environment = "dev"
  }
}