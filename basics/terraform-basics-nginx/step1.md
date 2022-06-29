## Installation
To use Terraform you will need to install it. HashiCorp distributes Terraform as a binary package. You can also install Terraform using popular package managers. Please refere here on the steps if you are installing terraform binaries in different operating system.

## Installing in a Linux Instance

Ensure that your system is up to date, and you have the gnupg, software-properties-common, and curl packages installed. You will use these packages to verify HashiCorp's GPG signature, and install HashiCorp's Debian package repository.

`sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl`{{exec}}

Add the HashiCorp GPG key.

`curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -`{{exec}}

Add the official HashiCorp Linux repository.
`sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`{{exec}}

Update to add the repository, and install the Terraform CLI.
`sudo apt-get update && sudo apt-get install terraform`{{exec}}

## Verify the installation

Verify that the installation worked by opening a new terminal session and listing Terraform's available subcommands.

` terraform -help`{{exec}}