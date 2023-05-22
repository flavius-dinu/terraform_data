provider "tfe" {
  token        = var.token
  organization = "flaviuscdinu93"
}

resource "tfe_team" "this" {
  count = 600
  name  = format("team%d", count.index)
}


resource "terraform_data" "this" {
  count = 600
  provisioner "local-exec" {
    command = format("echo %d", count.index)
  }
}

variable "token" {
  type = string
}
