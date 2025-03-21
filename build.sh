apt update 
apt install -y ca-certificates  
echo "deb-src https://deb.debian.org/debian stable main" |  tee -a /etc/apt/sources.list
apt update
apt install wget libmupdf-dev libwlroots-dev libxml2-dev libcairo2-dev libpango1.0-dev libpng-dev librsvg2-dev   gcc cmake  meson ca-certificates binutils  -y
version=0.5.3
echo $version > version 
wget https://github.com/labwc/labwc/archive/refs/tags/$version.tar.gz
tar -xzf $version.tar.gz
cd labwc-$version/
meson -Dxwayland=disabled build/
ninja -C build/
strip build/labwc
