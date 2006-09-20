#!/bin/bash

VERSION="xorg-app-7.1"
MIRROR="http://ftp.gwdg.de/pub/x11/x.org/pub/individual/app"

PACKAGES="appres-1.0.0.tar.bz2
bdftopcf-1.0.0.tar.bz2
beforelight-1.0.1.tar.bz2
bitmap-1.0.2.tar.bz2
editres-1.0.1.tar.bz2
fonttosfnt-1.0.1.tar.bz2
fslsfonts-1.0.1.tar.bz2
fstobdf-1.0.2.tar.bz2
iceauth-1.0.1.tar.bz2
ico-1.0.1.tar.bz2
lbxproxy-1.0.1.tar.bz2
listres-1.0.1.tar.bz2
luit-1.0.1.tar.bz2
mkcfm-1.0.1.tar.bz2
mkcomposecache-1.1.tar.bz2
mkfontdir-1.0.2.tar.bz2
mkfontscale-1.0.1.tar.bz2
oclock-1.0.1.tar.bz2
proxymngr-1.0.1.tar.bz2
rendercheck-1.1.tar.bz2
rgb-1.0.1.tar.bz2
rstart-1.0.2.tar.bz2
scripts-1.0.1.tar.bz2
sessreg-1.0.0.tar.bz2
setxkbmap-1.0.2.tar.bz2
showfont-1.0.1.tar.bz2
smproxy-1.0.2.tar.bz2
twm-1.0.1.tar.bz2
viewres-1.0.1.tar.bz2
x11perf-1.4.1.tar.bz2
xauth-1.0.1.tar.bz2
xbiff-1.0.1.tar.bz2
xcalc-1.0.1.tar.bz2
xclipboard-1.0.1.tar.bz2
xclock-1.0.2.tar.bz2
xcmsdb-1.0.1.tar.bz2
xconsole-1.0.2.tar.bz2
xcursorgen-1.0.1.tar.bz2
xdbedizzy-1.0.1.tar.bz2
xditview-1.0.1.tar.bz2
xdm-1.0.5.tar.bz2
xdpyinfo-1.0.1.tar.bz2
xdriinfo-1.0.1.tar.bz2
xedit-1.0.2.tar.bz2
xev-1.0.2.tar.bz2
xeyes-1.0.1.tar.bz2
xf86dga-1.0.1.tar.bz2
xfd-1.0.1.tar.bz2
xfindproxy-1.0.1.tar.bz2
xfontsel-1.0.1.tar.bz2
xfs-1.0.2.tar.bz2
xfsinfo-1.0.1.tar.bz2
xfwp-1.0.1.tar.bz2
xgamma-1.0.1.tar.bz2
xgc-1.0.1.tar.bz2
xhost-1.0.1.tar.bz2
xinit-1.0.2.tar.bz2
xkbcomp-1.0.2.tar.bz2
xkbevd-1.0.2.tar.bz2
xkbprint-1.0.1.tar.bz2
xkbutils-1.0.1.tar.bz2
xkill-1.0.1.tar.bz2
xload-1.0.1.tar.bz2
xlogo-1.0.1.tar.bz2
xlsatoms-1.0.1.tar.bz2
xlsclients-1.0.1.tar.bz2
xlsfonts-1.0.1.tar.bz2
xmag-1.0.1.tar.bz2
xman-1.0.2.tar.bz2
xmessage-1.0.1.tar.bz2
xmh-1.0.1.tar.bz2
xmodmap-1.0.1.tar.bz2
xmore-1.0.1.tar.bz2
xphelloworld-1.0.1.tar.bz2
xplsprinters-1.0.1.tar.bz2
xpr-1.0.1.tar.bz2
xprehashprinterlist-1.0.1.tar.bz2
xprop-1.0.2.tar.bz2
xrandr-1.0.2.tar.bz2
xrdb-1.0.2.tar.bz2
xrefresh-1.0.2.tar.bz2
xrx-1.0.1.tar.bz2
xset-1.0.2.tar.bz2
xsetmode-1.0.0.tar.bz2
xsetpointer-1.0.0.tar.bz2
xsetroot-1.0.1.tar.bz2
xsm-1.0.1.tar.bz2
xstdcmap-1.0.1.tar.bz2
xtrap-1.0.2.tar.bz2
xvidtune-1.0.1.tar.bz2
xvinfo-1.0.1.tar.bz2
xwd-1.0.1.tar.bz2
xwininfo-1.0.2.tar.bz2
xwud-1.0.1.tar.bz2"

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