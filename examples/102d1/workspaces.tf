variable "instance_count" {
  description = "Count of instances"
}
resource "null_resource" "app_instance" {
  count = var.instance_count
}
