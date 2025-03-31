#building dockerimage
sudo docker build -t capstoneimage .

#check dockerimage
sudo docker images

#installing docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.17.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#chmod
sudo chmod +x /usr/local/bin/docker-compose

#docker-compose version
docker-compose --version

#run docker-compose
sudo docker-compose up -d

#check docker ps
sudo docker ps
