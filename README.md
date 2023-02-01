# docker-pkgbuilder

Docker PKGBUILD Environment for Jimni Packages<br>
user account :<br>
user : `user `<br>password` password`
### jimni.sh
```
bash jimni.sh <download/autobuild>
```

- download : will download jimni packages to compile

- autobuild : will compile every package with makepkg and output to build directory

---
- How to build image
```bash
sudo docker build -t jimni --no-cache=true .
```

- How to run image
```bash
docker run -it --rm jimni bash -c "bash"
```
Todo - copy packaged files from container to host