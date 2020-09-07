# your deb name
deb_name="my_deb"
# your executable file name
executable_folder=executables
# your libs
libs_folder=libs
# make your file executable
chmod +x executables/*
# make the debian directory for deb
mkdir $deb_name && mkdir $deb_name/DEBIAN
mkdir -p $deb_name/usr/local/bin
mkdir -p $deb_name/usr/local/lib
# arrange required files inside the deb directory
cp -r executables/* $deb_name/usr/local/bin
cp -r libs/* $deb_name/usr/local/lib
cp control $deb_name/DEBIAN
# make post installation file executable
chmod +x postinst 
cp postinst $deb_name/DEBIAN
# build and install your custom package to your system
sudo dpkg-deb --build $deb_name
sudo dpkg -i $deb_name.deb

