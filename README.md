# docker-pkgbuilder

Docker PKGBUILD Environment for Jimni Packages<br>
user account :<br>
user : `user`<br>password`password`
### jimni.sh
```
bash jimni.sh <download/autobuild/run>
```

- download : will download jimni packages to compile

- autobuild : will compile every package with makepkg and output to build directory (requires `download` to be run first)

- run : will start the container and give you a shell session

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