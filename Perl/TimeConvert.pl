#!/usr/local/bin/perl
#
# composite series of images over a background image
#

$FILE = "testdata.txt";

open(FILE);
open(TMPFILE, ">temp.txt");

foreach $line (<FILE>) {
	#print TMPFILE $line;
	my @values = split(",",$line);
	my $size = scalar @values;

	if($values[0] == 'timestamp') 
	{

		print TMPFILE "timestamp"; 
	}
	else {
	$values[0] = $values[0]/1000;
	my $date = scalar localtime ($values[0]);
	print TMPFILE $date;
	}
	#print TMPFILE scalar localtime ($value[0]);
	for($i=1;$i<10;$i++)
	{
		print TMPFILE ",";
		print TMPFILE $values[$i];
	}
	#print TMPFILE "\n";
	#foreach $value (@values)
	#{
	#	
	#}
	#print($values[0]);
	#print "\n";
}
close(FILE);
close(TMPFILE);