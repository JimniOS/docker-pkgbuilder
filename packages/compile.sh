current_dir=$PWD
# for each package in packages
for package in $(ls -d */); do
    cd $package
    # if there is a PKGBUILD file
    if [ -f "PKGBUILD" ]; then
            # run makepkg
            sudo -u user makepkg -si --noconfirm
        # copy the package to the build directory
        cp *.pkg.tar.zst /tmp/build
    fi
    cd $current_dir
done
#cd neofetch && wget https://github.com/JimniOS/neofetch/releases/latest/download/PKGBUILD -O PKGBUILD && makepkg -si --noconfirm
#cp *.pkg.tar.zst /tmp/build
#cd $current_dir;