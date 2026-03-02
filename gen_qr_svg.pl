#!/usr/bin/perl

use strict;

my $year = 2026;
my $notebook_number = "01";

print '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>';
print "\n";
print "<qrcodes>\n";

my ($ident, $pagenumber);
for (my $i = 1; $i <= 192; $i++) {
	$ident = $year . $notebook_number . sprintf("%03d", $i);
	$pagenumber = $year . "-" . $notebook_number . "-" . sprintf("%03d", $i);
	warn $ident;
	warn $pagenumber;
	print "   <number ident='$ident' pagenumber='$pagenumber'>\n";
	print `qrencode -t svg --inline $ident`;
	print "   </number>\n";
}
print "</qrcodes>\n";
