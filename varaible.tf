
variable "instance_type" {
    type = string
  default = "t3.micro"
    description = "instance _size"
}

variable "sg_id" {
  type = list
  default = ["sgr-04c8cf950f79b1680"]
}

variable "tags" {
  type= map
  default = {
    Name= "roboshop_cart"
    terraform = true
    Environment = "dev"
  }
}