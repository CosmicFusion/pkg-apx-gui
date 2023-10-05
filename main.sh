#! /bin/bash

# Clone Upstream
git clone https://github.com/Vanilla-OS/apx-gui ./vanilla-apx-gui
cd ./vanilla-apx-gui
rm -rfv debian/changelog
touch debian/changelog
echo -e "vanilla-apx-gui (1.1.0-100pika1) pikauwu; urgency=medium\n\n  * New Release\n\n -- Ward Nakchbandi <hotrod.master@hotmail.com> Sat, 01 Oct 2022 14:50:00 +0200" > debian/changelog


# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
