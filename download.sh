# Description: Download PKGBUILDs from GitHub/Repositories
echo " - neofetch"
if [ ! -d "packages/neofetch" ]; then
    mkdir -p packages/neofetch
fi
curl -s https://api.github.com/repos/jimnios/neofetch/releases/latest | grep "browser_download_url.*PKGBUILD" | cut -d : -f 2,3 | tr -d \" | wget -qi - -O packages/neofetch/PKGBUILD

echo " - saavn-cli"
if [ ! -d "packages/saavn-cli" ]; then
    mkdir -p packages/saavn-cli
fi
wget https://raw.githubusercontent.com/wiz64/saavn-cli/main/PKGBUILD -O packages/saavn-cli/PKGBUILD
echo "-------- DOWNLOAD COMPLETE ---------"
