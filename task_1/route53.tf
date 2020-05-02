resource "aws_route53_record" "www" {
  zone_id = "Z008477835E5CWOGMD1FZ"
  name    = "www.bekadi.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}