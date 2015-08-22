#!/bin/bash
version=4.9.3
numproc=8
sudo yum install texinfo-tex flex zip libgcc.i686 glibc-devel.i686
wget -c http://ftp.gnu.org/gnu/gcc/gcc-$version/gcc-$version.tar.bz2
tar xf gcc-$version.tar.bz2
cd gcc-$version
./contrib/download_prerequisites
cd ..
mkdir objdir
cd objdir
 
# install gcc to /usr/local
../gcc-$version/configure
 
# change 6 with number of processor. Check with "nproc"
make -j$numproc
sudo make install
 
# Not required for centos 6
echo 'pathmunge /usr/local/bin' > /etc/profile.d/userLocalBin.sh
chmod +x /etc/profile.d/userLocalBin.sh
. /etc/profile
