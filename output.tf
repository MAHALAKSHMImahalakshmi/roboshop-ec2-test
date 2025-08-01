output "public_id" {
  value = module.ec2.public_id
}
output "private_id" {
  value = module.ec2.private_id
}
output "name" {
  value = module.ec2.id # instance_id error not as per formate so 
}