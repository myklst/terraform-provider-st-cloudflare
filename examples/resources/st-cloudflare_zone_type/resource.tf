resource "st-cloudflare_zone_type" "cdn_zone" {
  zone_id   = "abcde1234567890"
  zone_type = "partial"
  zone_plan = "enterprise"
}
