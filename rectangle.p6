#!/usr/bin/env perl6
use v6;

my @grid;
sub build-grid {
for 0..4 -> $iterator {
  for 0..4 -> $sub-arr {
    @grid[$iterator][$sub-arr].push("X");
  }
}
}
build-grid;

for 0..@grid.elems -> $elem { say @grid[$elem]} ;
#Use the below to check against indices for out of bounds coordinates
#say @grid.elems;
sub gen-rec {
  my $length = @grid.elems.rand.round;
  my $height = @grid.elems.rand.round;
  say $height; say $length;
}
gen-rec;
