provider "tfe" {
  token        = var.token
  organization = "flaviuscdinu93"
}

resource "tfe_team" "this" {
  count = 600
  name  = format("team%d", count.index)
}


variable "token" {
  type = string
}
