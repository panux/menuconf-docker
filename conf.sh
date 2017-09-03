set -e
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-$1.tar.xz
tar -xf linux-$1.tar.xz
mv linux-$1 linux
if [ -f "$2" ]; then
	cp $2 linux/.config
else
	make -C linux defconfig
fi
make -C linux menuconfig
cat linux/.config > $2
