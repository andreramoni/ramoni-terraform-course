output "my_first_resource_id" {
  value = null_resource.my_first_resource.id
}

resource "null_resource" "my_first_resource" { 

}

