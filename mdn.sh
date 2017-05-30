

# First run updates
apt-get -y update && apt-get -y upgrade

# Getting node and client files
wget https://github.com/MysteriumNetwork/node/releases/download/0.0.6/mysterium-client_linux_amd64.deb
wget https://github.com/MysteriumNetwork/node/releases/download/0.0.6/mysterium-node_linux_amd64.deb

# Prerequisites
apt-get -y isntall openvpn

# Install Node and Client
dpkg --install mysterium-node_linux_amd64.deb
apt-get install --fix-broken

service mysterium-node restart
service mysterium-node status

dpkg --install mysterium-client_linux_amd64.deb
apt-get install --fix-broken

service mysterium-client restart
service mysterium-client status
