# Description: Download PKGBUILDs from GitHub/Repositories
echo " - neofetch"
if [ ! -d "packages/neofetch" ]; then
    mkdir -p packages/neofetch
fi
curl -s https://api.github.com/repos/jimnilinux/neofetch/releases/latest | grep "browser_download_url.*PKGBUILD" | cut -d : -f 2,3 | tr -d \" | wget -qi - -O packages/neofetch/PKGBUILD
echo "-------- DOWNLOAD COMPLETE ---------"
