resource "aws_instance" "ec2instance" {
count=2
instance_type = var.inst_type[count.index]
ami = var.amis[count.index]
subnet_id = var.sub[count.index] 
tags = {
  Name=var.Name[count.index]
  owner=var.owner
  Purpose=var.assignment
  
}
volume_tags = {
  Name=var.Name[count.index]
  owner=var.owner
  Purpose=var.assignment
} 
}


resource "aws_s3_bucket" "s3bucket" {
  for_each = var.loop_name
  bucket = each.value.Namebuck
  tags = {
    Name = each.value.name
    owner=each.value.owner
    purpose=each.value.purpose
  }
}


