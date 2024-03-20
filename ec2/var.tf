variable "sg_id" {
   
   type        = string
}


variable "subnets" {
type=list(string)

}

variable "ec2_names" {
   type        =list(string)

default =["webserver-1","webserver-2"]

}

variable "azs" {
type=list

default =["ap-south-1a","ap-south-1b","ap-south-1c"]
}
