resource "null_resource" "my_null1" {
  count = 6
}

output "my_null1" { value = null_resource.my_null1.*.id }


resource "null_resource" "my_null0" {
  depends_on = [ null_resource.my_null1 ]

  #lifecycle { create_before_destroy = true }

  ## This is an argument that can be used to trigger resource replacement:
  #triggers = { timestamp = timestamp() }
}

