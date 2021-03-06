#!/bin/ksh
set -x

year=${1:-2018}
mkdir $year
cd $year ||exit 8


#Atlantic and Eastern Pacific
adeck=/nhc/noscrub/data/atcf-noaa/aid_nws
cp -p $adeck/aal*${year}* .
cp -p $adeck/acp*${year}* .
cp -p $adeck/aep*${year}* .

bdeck=/nhc/noscrub/data/atcf-noaa/btk
cp -p $bdeck/bal*${year}* .
cp -p $bdeck/bcp*${year}* .
cp -p $bdeck/bep*${year}* .

#West and central Pacific:
adeck=/nhc/noscrub/data/atcf-navy/aid
cp -p $adeck/awp*${year}* .

bdeck=/nhc/noscrub/data/atcf-navy/btk
cp -p $bdeck/bwp*${year}* .


exit
#---------------------------------------------
#---------------------------------------------
#/com/nhc/prod/atcf has EMX data

#--final updated archive on teh web
#NHC:  ftp://ftp.nhc.noaa.gov/atcf/archive
#JTWC:  http://www.usno.navy.mil/NOOC/nmfc-ph/RSS/jtwc/best_tracks/



