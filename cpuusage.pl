#!/usr/bin/perl -w

$load = `uptime`;

chop($load);
$load =~ /^.+average:.+, (.+),.+$/;
$la = $1*100;
print "$la\n";  # load in 5 in average
print "0\n"; 	# script running mrtg update
print "$load\n";# uptime
print "server1\n"; #hostname
