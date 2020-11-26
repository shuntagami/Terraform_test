resource "aws_acm_certificate" "touringtaro" {
  domain_name               = "${data.aws_route53_zone.touringtaro.name}"
  subject_alternative_names = []
  validation_method         = "DNS"
}