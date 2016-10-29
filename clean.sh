#!/bin/sh
set -e
. ./config.sh

for PROJECT in $PROJECTS; do
    echo $PROJECT
    echo $MAKE
  (cd $PROJECT && $MAKE clean)
done
 
rm -rf sysroot
rm -rf isodir
