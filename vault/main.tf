#Configuration to use vault, NEVER USE THIS
provider "vault" {

  address = "http://"
  token   = "s.1q2w3e4r5t6y7u8i9o0p"

}

data "vault_generic_secret" "phone_number" {

  path = "secret/app"

}

output "phone_number" {

  value = data.vault_generic_secret.phone_number
  sensitive = false

}
