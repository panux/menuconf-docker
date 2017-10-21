set -e

if [ $# -lt 3 ]; then
	echo "Missing arguments"
fi

wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-$1.tar.xz
tar -xf linux-$1.tar.xz
mv linux-$1 linux
if [ -f "$2" ]; then
	cp $2 linux/.config
else
	if [ $3 = x86 ]; then
		make -C linux ARCH=i386 defconfig
	else
		make -C linux ARCH=$3 defconfig
	fi
fi
make -C linux menuconfig
cat linux/.config > $2
