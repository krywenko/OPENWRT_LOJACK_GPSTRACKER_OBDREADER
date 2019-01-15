#!/usr/bin/perl -w

$time = `date +%f`; 

print "$time";

my $stop_time = time + 10;
print "running\n";

    system("gpxlogger -i 7 -e shm localhost:2947 > /tmp/gps-$time ");

#print "running";
while (1) {

#print "running ";
last if time > $stop_time;
#system("gpxlogger -i 5 -e shm localhost:2947 > /tmp/gps1 &");

}
system("killall gpxlogger -i 7 -e shm localhost:2947");

print "stopped\n";
exit;	
#}



