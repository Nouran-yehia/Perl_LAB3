#!/usr/bin/perl 
open($f, "<", "4.txt")
or die "Failed to open file: $!\n";
    while(<$f>) { 
        chomp; 
        push @array, $_;
    } 
close $f;

foreach $word(@array){
    if ($word =~ m/^\d\/\d\/2100|(20((0[1-9])|([1-9][0-9])))$/) 
        { 
            $wordCount += 1;
        }       
    }
print "times that 21th dates pattern has been in the file : " . ($wordCount) . "\n";
