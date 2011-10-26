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
rm package/$PKG_NAME.gz

cd ..; $TAR cvfz $PKG_DIR/package/$PKG_NAME.gz  --exclude="*/.gitignore" --exclude="*/package" --exclude="*.gz" --exclude="*/.git" $PKG_DIR

cd $PKG_DIR
ls package/$PKG_NAME.gz
