module "pet" {
  source = "../modules/random_pet"
  length = 3
}

output "pet_name" {
  value = module.pet.id
}
