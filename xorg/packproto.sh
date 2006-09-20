#!/bin/bash

VERSION="xorg-proto-7.1"
MIRROR="http://ftp.gwdg.de/pub/x11/x.org/pub/individual/proto/"

PACKAGES="applewmproto-1.0.3.tar.bz2
bigreqsproto-1.0.2.tar.bz2
compositeproto-0.3.tar.bz2
damageproto-1.0.3.tar.bz2
dmxproto-2.2.2.tar.bz2
evieext-1.0.2.tar.bz2
fixesproto-4.0.tar.bz2
fontcacheproto-0.1.2.tar.bz2
fontsproto-2.0.2.tar.bz2
glproto-1.4.8.tar.bz2
inputproto-1.3.2.tar.bz2
kbproto-1.0.3.tar.bz2
printproto-1.0.3.tar.bz2
randrproto-1.1.2.tar.bz2
recordproto-1.13.2.tar.bz2
renderproto-0.9.2.tar.bz2
resourceproto-1.0.2.tar.bz2
scrnsaverproto-1.1.0.tar.bz2
trapproto-3.4.3.tar.bz2
videoproto-2.2.2.tar.bz2
windowswmproto-1.0.3.tar.bz2
xcmiscproto-1.1.2.tar.bz2
xextproto-7.0.2.tar.bz2
xf86bigfontproto-1.1.2.tar.bz2
xf86dgaproto-2.0.2.tar.bz2
xf86driproto-2.0.3.tar.bz2
xf86miscproto-0.9.2.tar.bz2
xf86rushproto-1.1.2.tar.bz2
xf86vidmodeproto-2.2.2.tar.bz2
xineramaproto-1.1.2.tar.bz2
xproto-7.0.7.tar.bz2
xproxymanagementprotocol-1.0.2.tar.bz2"

mkdir $VERSION/
cd $VERSION

for i in $PACKAGES
do
    wget $MIRROR"/"$i
    tar jxvf $i
    rm -f $i
done

cd ..
tar cjvf $VERSION.tar.bz2 $VERSION/
rm -rf $VERSION/
