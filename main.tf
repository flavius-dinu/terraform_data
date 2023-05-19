resource "terraform_data" "example" {
  count = 600
  provisioner "local-exec" {
    command = "echo test"
  }
}
