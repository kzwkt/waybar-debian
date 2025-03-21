apt update 
apt install -y ca-certificates  
echo "deb-src https://deb.debian.org/debian stable main" |  tee -a /etc/apt/sources.list
apt update
apt install wget  libgtkmm-3.0-dev libxkbregistry-dev libinput-dev libwayland-dev libwireplumber-0.4-dev pkgconf systemd-dev cmake   gcc cmake  meson ca-certificates binutils  -y
version=0.12.0
repo="Alexays/Waybar"
echo $version > version 
wget https://github.com/$repo/archive/refs/tags/$version.tar.gz
tar -xzf $version.tar.gz
cd Waybar-$version/
meson setup build -Dlibnl=disabled -Ddbusmenu-gtk=disabled -Dupower_glib=disabled -Dcava=disabled -Dmpris=disabled -Dmpd=disabled -Dsndio=disabled -Dniri=false --wipe 
ninja -C build/
strip build/waybar
