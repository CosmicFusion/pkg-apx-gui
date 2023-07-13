# Clone Upstream
git clone https://github.com/Vanilla-OS/apx-gui ./vanilla-apx-gui
cd ./vanilla-apx-gui

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
