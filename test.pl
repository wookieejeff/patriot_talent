#!/usr/bin/perl
use Data::Dumper;
use Sort::Naturally;

open (my $fh, "<", "units.txt") or die ("Cannot open units.txt\n");

my (@addresses, %residents);
while(my $line = <$fh>)
{
   my @matches = $line =~ /(.*?)\s+-\s+(.*?)$/g;
   push(@addresses, $matches[0]);
   $residents{$matches[0]} = $line;
}
@addresses = nsort(@addresses);

foreach my $address(@addresses)
{
   print $residents{$address};
}
