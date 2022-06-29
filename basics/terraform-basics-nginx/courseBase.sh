sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

mkdir -p ~/terraform-docker-demo && cd $_
clear
echo "Scenario Ready!"