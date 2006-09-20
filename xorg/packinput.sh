#!/bin/bash

VERSION="xorg-input-7.1"
MIRROR="http://ftp.gwdg.de/pub/x11/x.org/pub/individual/driver/"

PACKAGES="xf86-input-acecad-1.1.0.tar.bz2
xf86-input-aiptek-1.0.1.tar.bz2
xf86-input-calcomp-1.1.0.tar.bz2
xf86-input-citron-2.2.0.tar.bz2
xf86-input-digitaledge-1.1.0.tar.bz2
xf86-input-dmc-1.1.0.tar.bz2
xf86-input-dynapro-1.1.0.tar.bz2
xf86-input-elo2300-1.1.0.tar.bz2
xf86-input-elographics-1.1.0.tar.bz2
xf86-input-evdev-1.1.2.tar.bz2
xf86-input-fpit-1.1.0.tar.bz2
xf86-input-hyperpen-1.1.0.tar.bz2
xf86-input-jamstudio-1.1.0.tar.bz2
xf86-input-joystick-1.1.0.tar.bz2
xf86-input-keyboard-1.1.0.tar.bz2
xf86-input-magellan-1.1.0.tar.bz2
xf86-input-magictouch-1.0.0.5.tar.bz2
xf86-input-microtouch-1.1.0.tar.bz2
xf86-input-mouse-1.1.1.tar.bz2
xf86-input-mutouch-1.1.0.tar.bz2
xf86-input-palmax-1.1.0.tar.bz2
xf86-input-penmount-1.2.0.tar.bz2
xf86-input-spaceorb-1.1.0.tar.bz2
xf86-input-summa-1.1.0.tar.bz2
xf86-input-tek4957-1.1.0.tar.bz2
xf86-input-ur98-1.1.0.tar.bz2
xf86-input-vmmouse-12.4.0.tar.bz2
xf86-input-void-1.1.0.tar.bz2"

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