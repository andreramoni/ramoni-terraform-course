data "terraform_remote_state" "project01" {
  backend = "s3"
  config = {
    bucket   = "ramoni-terraform-states"
    region   = "sa-east-1"
    key      = "myproject01.tfstate"     
  }
}
