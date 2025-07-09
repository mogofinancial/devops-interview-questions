# Terraform Exercise

This exercise is to test your knowledge of Terraform.

We're using Terraform version 1.3.9.  If you don't have it installed, you can
download the binary from https://releases.hashicorp.com/terraform/1.3.9/

The `base` directory contains our main terraform configuration, and it makes
use of a module in the `modules` directory.  Go ahead and initialize the
configuration in the `base` directory and create the resources.

## First Task

The `random_pet` resource also supports a prefix option.  Add that to the
module (defaulting to "Mister") and make use of it in our _base_ configuration,
so that _our_ pet name starts with Doctor.  It'll be adorable!

## Second Task

Rename our "pet" resource to "my_pet", just in case anyone gets any ideas of
keeping it for themselves.  To do this, change this line in your
`base/main.tf`:

``` terraform
module "pet" {
```

...to...

``` terraform
module "my_pet" {
```

You'll also have to change the reference in the `output` in that same file.

Easy enough!  However, notice that `terraform apply` now wants to DESTROY AND
RECREATE OUR PET!  Never.  Convince Terraform that this is actually the same
pet with a new name, so that `terraform apply` doesn't attempt to destroy our
precious darling.

> Answer:
>
> Record here what you did and why you chose that approach.

## Third Task

Add a proper `.gitignore` to this root directory to ensure we don't commit
items that shouldn't be kept in version control.  Explain the reasoning behind
each entry.

> Answer:
>
> Explain why you added the lines you did to your `.gitignore` file.
