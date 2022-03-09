#!/bin/bash

URL='https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds'
DATE='20220308T160629Z'



#OpenRC
STAGE3_OPENRC="${URL}/${DATE}/stage3-amd64-desktop-openrc-${DATE}.tar.xzz"

#SystemD
STAGE3_SYSTEMD="${URL}/${DATE}/stage3-amd64-desktop-systemd-${DATE}.tar.xz"


wget $STAGE3_OPENRC
