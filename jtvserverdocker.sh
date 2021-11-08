apt update && apt upgrade
apt install ca-certificates crl gnupg lsb-release -y
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
apt update
apt-get install docker-ce docker-ce-cli containerd.io -y

docker run -p 3500:3500 dhruv2015/jtvserver
