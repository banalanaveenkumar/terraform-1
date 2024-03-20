resource "aws_instance" "web" {
  ami  = data.aws_ami.amazon-2.id

  instance_type = "t2.micro"
  count=length(var.ec2_names)             
  vpc_security_group_ids= [var.sg_id]
  subnet_id     = element(var.subnets,count.index)
 availability_zone= element(var.azs,count.index)
 tags = {
    Name = var.ec2_names[count.index]
  }

}
