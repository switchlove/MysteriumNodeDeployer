

# First run updates
apt-get update && apt-get upgrade -y

# Getting node
wget https://github.com/MysteriumNetwork/node/releases/download/0.0.6/mysterium-node_linux_amd64.deb

# Prerequisites
apt-get install openvpn  -y

# Install Node and Client
dpkg --install mysterium-node_linux_amd64.deb
apt-get install --fix-broken

service mysterium-node restart
service mysterium-node status
