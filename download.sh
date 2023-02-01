# Description: Download PKGBUILDs from GitHub/Repositories
echo " - neofetch"
curl -s https://api.github.com/repos/jimnilinux/neofetch/releases/latest | grep "browser_download_url.*PKGBUILD" | cut -d : -f 2,3 | tr -d \" | wget -qi - -O packages/neofetch/PKGBUILD
echo "-------- DOWNLOAD COMPLETE ---------"
