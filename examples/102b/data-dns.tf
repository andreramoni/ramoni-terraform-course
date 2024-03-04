data "dns_a_record_set" "data_dns_google" {
  host  = "www.google.com"
}
output "data_dns_google" { value = data.dns_a_record_set.data_dns_google }
output "data_dns_google_addrs" { value = data.dns_a_record_set.data_dns_google.addrs }


