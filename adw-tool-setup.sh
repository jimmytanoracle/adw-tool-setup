#!/bin/bash
sudo yum install docker-engine -y

sudo systemctl enable docker

sudo systemctl start docker

sudo groupadd docker

sudo usermod -aG docker $USER

export docker_password="UNnp:Lh0pi}O]9)0IB#l"

echo $docker_password | sudo docker login lhr.ocir.io --username apaccpt01/adwswat --password-stdin

sudo docker pull lhr.ocir.io/apaccpt01/adwhol/adw-hol:1.0

wget https://objectstorage.uk-london-1.oraclecloud.com/p/DEbSlnJAxz58LGz97bRQPwUsjo97Jmbufs2JEgbE0Vk/n/apaccpt01/b/adwterratorm/o/startParticipantContainers.sh

wget https://objectstorage.uk-london-1.oraclecloud.com/p/4copnNHswrNq8RZA-4FpHCo6rWpA7tU5gRfwzsP4UpE/n/apaccpt01/b/adwterratorm/o/stopAllContainers.sh

sudo chmod +x *.sh

sudo reboot

