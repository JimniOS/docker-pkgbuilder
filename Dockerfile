# Jimnilinux build environment
# Developer : wiz64
# sudo docker build -t jimni --no-cache=true .
# docker run -it --rm jimni bash -c "bash"
FROM archlinux:latest
RUN /bin/bash -c 'pacman -Sy'
COPY dotfiles/.bashrc /root/.bashrc
COPY packages/ /tmp/packages/
COPY autobuild.sh /tmp/autobuild.sh
RUN /bin/bash -c 'source $HOME/.bashrc && \
pacman -S bash neofetch base-devel git wget sudo nano --noconfirm'
RUN /bin/bash -c 'useradd -m -G wheel user'
RUN /bin/bash -c 'echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers'
RUN /bin/bash -c 'echo "user:password" | chpasswd'
ARG autobuild
RUN if [[ -z "$autobuild" ]] ; then RUN /bin/bash -c "sudo -u user bash /tmp/autobuild.sh" ; else echo not auto building ; fi
# start package compilation