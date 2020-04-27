resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
    key_name = "${aws_key_pair.us-east-1-key.key_name}"
    security_groups = ["${aws_security_group.ssh.name}", "${aws_security_group.web.name}"]

  tags = {
    Name = "God Bless You!"
  }
 
user_data = <<-EOF
  #! /bin/bash
    yum install httpd -y
    systemctl restart httpd
    systemctl enable httpd
    echo "<h1>GOD BLESS YOU!</h1>" > /var/www/html/index.html
     
     
     
 EOF

}

