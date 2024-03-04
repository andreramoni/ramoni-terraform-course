data "template_file" "config" {
  template = file("${path.module}/template.tpl")
  vars = {
    var1 = "value1"
    var2 = "value2"
    var3 = "value3"
  }
}

output "template" { value = data.template_file.config.rendered }
