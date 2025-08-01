# module = function,roles ,DRY  concept
#module syantax
# terraform during exection it checks module key world then search for soucre of module
module "ec2" {
    source = "../terraform-aws-instance" # Points to the parent module directory
    instance_type = var.instance_type
    sg_id = var.sg_id
   # ami_id it is in medule default for all this os for the project used 
    tags = var.tags
  }

 