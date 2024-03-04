locals {
 
  instance_count = {
    dev = 1
    prd = 5
  }

}
resource "null_resource" "app_instance" {
  count = local.instance_count[terraform.workspace]
}
