#!/bin/bash
cd /home/isucon/isucon/webapp/perl
exec perl -Mlib=extlib/lib/perl5 /usr/bin/plackup -s Starman -E production --preload-app app.psgi