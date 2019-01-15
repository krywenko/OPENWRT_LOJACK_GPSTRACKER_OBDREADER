#!/usr/bin/perl -w
#use Text::Trim qw(trim);

my $stop_time = time + 21600;
open(SUB, "/root/./gps1.pl |");


while ($value = <SUB>) {

print "$value";

while (1) {

last  if time > $stop_time;

}

last;

}

system("killall gpxlogger");

exit;

