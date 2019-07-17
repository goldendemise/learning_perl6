#!/usr/bin/env perl6
sub justify-right(Str $string) {
  my $justification = 70 - $string.chars;
  " " x $justification ~ $string;
}

say justify-right "this is bananas";
