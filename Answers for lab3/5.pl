#!/usr/bin/perl 

use Array::Compare;
use Data::Compare;

@arr1 = 0 .. 10;
@arr2 = 0 .. 10;

$comp1 = Array::Compare->new;
  
if ($comp1->compare(\@arr1, \@arr2)) {
  print "Arrays are the same\n";
} else {
  print "Arrays are different\n";
}

# %hash1 = ("apple"=>"red", "banana"=>"Yellow", "orange"=>"orange");
# %hash2 = ("apple"=>"red", "banana"=>"Yellow", "orange"=>"orange");

# $comp2 = Data::Compare->register_plugins;
# if ($comp2->compare(\%hash1, \%hash2)) {
#   print "Hashes are the same\n";
# } else {
#   print "Hashes are different\n";
# }
