#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

sub isPrime
{
  my $number = shift;
	my $l = 2;
	for ($l = 2; $l < $number; $l++)
	{
		if ($number % $l == 0)
			{
				return 0;
			}
	}
	return 1;
}


my $k = 2;

for ($k = 2; $k < 2000000; $k++)
{
	if (isPrime($k))
	{		
		print "X";
	}
	else
	{
		print "O";
		
	}
}
