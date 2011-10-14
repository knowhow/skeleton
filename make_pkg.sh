#!/bin/bash

PKG_NAME=skeleton
PKG_DIR=skeleton

mkdir package
rm package/$PK_NAME.gz
gnutar cvfz package/$PKG_NAME.gz ../$PKG_DIR --exclude=.gitignore --exclude=package --exclude=*.gz --exclude=.git

