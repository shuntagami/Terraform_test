resource "aws_route53_record" "touringtaro" {
  zone_id = "${data.aws_route53_zone.touringtaro.zone_id}"
  name    = "${data.aws_route53_zone.touringtaro.name}"
  type    = "A"
  alias {
    name                   = "${aws_lb.lb.dns_name}"
    zone_id                = "${aws_lb.lb.zone_id}"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "touringtaro_certificate" {
  zone_id = "${data.aws_route53_zone.touringtaro.id}"
  name    = tolist(aws_acm_certificate.touringtaro.domain_validation_options)[0].resource_record_name
  type    = tolist(aws_acm_certificate.touringtaro.domain_validation_options)[0].resource_record_type
  records = [tolist
    (aws_acm_certificate.touringtaro.domain_validation_options)[0].resource_record_value
  ]
  ttl = 60
}
