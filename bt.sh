#!/bin/bash
echo "51.81.230.243 www.bt.cn" >> /etc/hosts
source /etc/hosts
sleep 2s
wget http://www.bt.com/bt/install_panel.sh
sed -i "/bt.cn/d" /etc/hosts
bash install_panel.sh
unlink $0