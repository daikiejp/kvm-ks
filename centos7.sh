virt-install \
--name vps1 \
--network bridge=br0 \
--ram=2048 \
--os-type linux --os-variant=rhel7 \
--vcpus=1 \
--nographics \ 
--location='https://mirrors.tuna.tsinghua.edu.cn/centos/7.4.1708/os/x86_64/' \
--initrd-inject=/root/centos7x_kvm.ks \
--extra-args='ks=file:/centos7x_kvm.ks text console=tty0 console=ttyS0,115200n8 serial' \
--disk path=/vm-images/vps1.img,size=12 --hvm


virt-install --network bridge:br0 --net bridge=br0 --name vps4 --ram=2048 --vcpus=2 --disk path=/vm-images/vps4.img,size=15 --graphics none --cdrom /root/CentOS-7-x86_64-Minimal-1708.iso
