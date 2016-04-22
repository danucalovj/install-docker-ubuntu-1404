!/bin/bash
sudo apt-get -y install open-vm-tools
sudo apt-get -y install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
apt-cache policy docker-engine
sudo apt-get update
sudo apt-get  -y install linux-image-extra-$(uname -r)
sudo apt-get  -y install apparmor
sudo apt-get  -y install docker-engine
sudo service docker start
sudo docker run hello-world