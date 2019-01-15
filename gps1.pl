#!/usr/bin/perl -w

$time = `date +%f`; 

print "gps-$time";
$name = "gps-$time";
 
$name =~ s/\s+$//;
$name =  "$name.gpx";
#print "$name";
system("gpxlogger -m 3  -e shm localhost:2947 > /mnt/DATA/$name");




