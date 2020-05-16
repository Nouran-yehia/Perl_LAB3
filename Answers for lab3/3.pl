#!/usr/bin/perl 
open($f, "<", "1.txt")
or die "Failed to open file: $!\n";
    while(<$f>) { 
        chomp; 
        push @array, $_;
    } 
close $f;

foreach $word(@array){
    if ($word =~ m/Open Source/) 
        { 
            $word =~ s/Open Source/OSAD/
        }       
    }
open (FILE, ">> new.txt") || die "problem opening $outfile\n";
print FILE @array;
close(FILE);

