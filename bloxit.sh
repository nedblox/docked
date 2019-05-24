#!/bin/bash
KEY=${1?Error: no API key given}
apt install curl -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker your-user
echo "docker has been installed"
mkdir BloxOne
cd BloxOne
wget http://ib-noa-prod.csp.infoblox.com.s3-website-us-east-1.amazonaws.com/BloxOne_OnPrem_Docker_2.0.11.tar.gz
docker load i BloxOne_OnPrem_Docker_2.0.11.tar.gz
sudo docker run -d --name blox.noa --restart=always --net=host -v /var/run/docker.sock:/var/run/docker.sock infobloxcto/onprem.agent:v2.0.11 --access-key=$KEY
