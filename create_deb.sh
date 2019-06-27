# your deb name
deb_name="my_deb"
# your executable file name
executable_name=hello_exe
# make your file executable
chmod +x $executable_name
# make the debian directory for deb
mkdir $deb_name && mkdir $deb_name/DEBIAN
mkdir -p $deb_name/usr/local/bin
# arrange required files inside the deb directory
cp $executable_name $deb_name/usr/local/bin
cp control $deb_name/DEBIAN
# make post installation file executable
chmod +x postinst 
cp postinst $deb_name/DEBIAN
# build and install your custom package to your system
sudo dpkg-deb --build $deb_name
sudo dpkg -i $deb_name.deb

