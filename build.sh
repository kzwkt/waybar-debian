apt update 
xbps-install libevdev-devel libinput-devel wayland-devel gtkmm-devel spdlog eudev-libudev-devel gtk-layer-shell-devel jsoncpp-devel libglib-devel libsigc++-devel fmt-devel
version=0.12.0
repo="Alexays/Waybar"
echo $version > version 
wget https://github.com/$repo/archive/refs/tags/$version.tar.gz
tar -xzf $version.tar.gz
cd Waybar-$version/
meson setup build -Dlibnl=disabled -Ddbusmenu-gtk=disabled -Dupower_glib=disabled -Dcava=disabled -Dmpris=disabled -Dmpd=disabled -Dsndio=disabled -Dniri=false 
ninja -C build/
strip build/waybar
