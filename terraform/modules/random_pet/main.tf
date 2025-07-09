terraform {
  required_providers {
    random = "~> 3.1.0"
  }
}

resource "random_pet" "this" {
  length = var.length
}
