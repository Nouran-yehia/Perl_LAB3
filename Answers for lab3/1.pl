#!/usr/bin/perl 
open($f, "<", "1.txt")
or die "Failed to open file: $!\n";
    while(<$f>) { 
        chomp; 
        push @array, $_;
    } 
close $f;

foreach $word(@array){
    if ($word =~ m/ITI/) 
        { 
            $wordCount += 1;
        }       
    }
print "times that ITI pattern has repeated in the file : " . ($wordCount -1) . "\n";