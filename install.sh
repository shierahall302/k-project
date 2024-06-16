# install script

env bash -c "$(curl -sL https://github.com/telekom-security/tpotce/raw/master/install.sh)"

sudo apt-get install git -y && git clone https://github.com/shierahall302/KatyaTpot-DC && cd KatyaTpot-DC/iso/installer/ && cp tpot.conf.dist tpot.conf && sudo ./install.sh --type=auto --conf=tpot.conf
