resource "aws_route53_record" "www" {

  zone_id = "Z00035811SPEZCUX9RQ25"
  name    = var.route53_public_dns_name
  type    = "A"
  alias {
    name                   = aws_elb.bar.dns_name
    zone_id                = aws_elb.bar.zone_id
    evaluate_target_health = false
  }
}
