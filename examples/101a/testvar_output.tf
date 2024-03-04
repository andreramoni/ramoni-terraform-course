variable "testvar" {
  description = "Testing variable"
  default = "default value"
}

output "my_output" {
  value = "Testvar value is ${var.testvar}"
}
