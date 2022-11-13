sudo apt update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove
sudo apt -y install sox

sudo apt -y install htop
sudo apt -y install iotop
sudo apt -y install net-tools

sudo apt -y install ffmpeg

sudo apt -y install gimp
sudo apt -y install vlc
sudo apt -y install darktable
sudo apt -y install audacity 

# Installing Docker 
sudo apt -y install ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt -y update

sudo apt -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world