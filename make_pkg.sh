#!/bin/bash

PKG_NAME=skeleton
PKG_DIR=skeleton

gnutar cvfz package/$PKG_NAME.gz ../$PKG_DIR/ --exclude=*.gz --exclude=.git

