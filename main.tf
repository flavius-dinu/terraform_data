provider "tfe" {
  token   = var.token
  version = "~> 0.44.0"
}

resource "tfe_team" "this" {
  count        = 600
  name         = format("team%d", count.index)
  organization = "my-org-name"
}


variable "token" {
  type = string
}
