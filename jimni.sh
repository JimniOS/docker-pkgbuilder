#!/bin/bash
# get argv[1] and argv[2]
# argv[1] is the action name (build, run, clean) etc
# argv[2] is the package name
echo "----------------------------------------------------------------------"
echo "Jimnilinux/docker-pkgbuilder : docker container for building packages"
echo "----------------------------------------------------------------------"
# if help is called
if [ "$1" == "help" ]; then
    echo "Usage: ./jimni.sh [action] [package name]"
    echo "Example: ./jimni.sh build neofetch"
    echo "----------------------------------------------------------------------"
    echo "Available actions:"
    echo "build : build a package"
    echo "run : run container"
    exit 0
fi
if [ "$1" == "run" ]; then
    echo "Running container"
    sudo docker build -t jimni .
    docker run -it --rm jimni bash -c "bash"
    exit 0
fi
if [ "$1" == "build" ]; then
    echo "Building $2"
    sudo docker build -t jimni .
    docker run -it --rm jimni bash -c 'cd /tmp/packages && sudo -u user bash ./compile.sh $2 && bash'
    exit 0
fi
#autobuild
if [ "$1" == "autobuild" ]; then
    echo "Building all packages"
    sudo docker build -t jimni . --build-arg autobuild=true
    docker run -it --rm jimni bash -c 'cd /tmp/ && bash ./autobuild.sh && bash'
    exit 0
fi

    

