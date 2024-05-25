## Installation
To use OpenTofu you will need to install it. You can install OpenTofu via a wide range of methods. This tutorial uses Ubuntu hence we will use installation method for Debian Linux.

## Installing in a Linux Instance

In order to add the repositories, you will need to install some tooling. On most Debian-based operating systems, these tools will already be installed.

`sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl gnupg`{{exec}}

First, you need to make sure you have a copy of the OpenTofu GPG key. This verifies that your packages have indeed been created using the official pipeline and have not been tampered with.  

```
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://get.opentofu.org/opentofu.gpg | sudo tee /etc/apt/keyrings/opentofu.gpg >/dev/null
curl -fsSL https://packages.opentofu.org/opentofu/tofu/gpgkey | sudo gpg --no-tty --batch --dearmor -o /etc/apt/keyrings/opentofu-repo.gpg >/dev/null
sudo chmod a+r /etc/apt/keyrings/opentofu.gpg /etc/apt/keyrings/opentofu-repo.gpg
```{{exec}}  

Now you have to create the OpenTofu source list.
```
echo "deb [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main
deb-src [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main" | sudo tee /etc/apt/sources.list.d/opentofu.list > /dev/null
sudo chmod a+r /etc/apt/sources.list.d/opentofu.list
```{{exec}}  

Finally, you can install OpenTofu:  
```
sudo apt-get update
sudo apt-get install -y tofu
```{{exec}}  

## Verify the installation

Verify that the installation worked by opening a new terminal session and listing OpenTofu's available subcommands.

`tofu -help`{{exec}}