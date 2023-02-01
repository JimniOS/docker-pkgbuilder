# docker-pkgbuilder
Docker PKGBUILD Environment for Jimni Packages<br>
user account :<br>
user : `user `<br>password` password`
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