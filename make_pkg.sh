#!/bin/bash

PKG_NAME=skeleton
PKG_DIR=skeleton

OS_MAC_OSX = `uname -a | grep -c Darwin`

if [ OS_MAC_OSX == "1" ]; then
    TAR=gnutar
else
    TAR=tar
fi


mkdir package
rm package/$PK_NAME.gz
$TAR cvfz package/$PKG_NAME.gz ../$PKG_DIR --exclude=.gitignore --exclude=package --exclude=*.gz --exclude=.git

