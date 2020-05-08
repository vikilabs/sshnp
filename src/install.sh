#! /bin/bash

INSTALL_DIR="/usr/bin"

get_installation_directory(){
    echo "[ status   ] Identifying Host System"
    linux_system=`uname -srm | grep -i "linux"`
    mac_system=`uname -srm | grep -i "darwin"`

    if [ ! -z "$linux_system" ]; then
        echo "[ status ] Linux System "
        INSTALL_DIR="/usr/bin"
    fi

    if [ ! -z "$mac_system" ]; then
        echo "[ status ] Mac System"
        INSTALL_DIR="/opt/local/bin/"
    fi
}

install_package(){
    chmod +x ./sshnp
    #check sudo 
    cp ./sshnp $INSTALL_DIR
}

check_installation_status(){
    if [ $1 -eq 0 ]; then
        echo "[ success ] sshnp installation is successful"
    else
        echo "[ failure ] sshnp installation failed, You should have sudo or root access to install this package"
    fi
}

get_installation_directory
install_package
check_installation_status $?

