variable "inst_type" {
    type = list(string)
    description = "Type of instance"
}

variable "amis" {
    type = list(string)
    description = "ami id"
}
variable "Name" {
    type = list(string)
    description = "Name"
   
}
variable "owner" {
    type = string
    description = "Owner"
    default = "harshit@cloudeq.com"
}
variable "assignment" {
    type = string
    description = "Assignment"
    default = "Assignment on loops"
}
variable "sub" {
    type = list(string)
    description = "subnet ids"
    
}

variable "loop_name" {
    type = map(any)
    description = "Map"
  
}


