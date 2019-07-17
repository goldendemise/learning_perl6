#!/usr/bin/env perl6
sub timr($seconds) {
  my $secs = $seconds % 60;
  my $minutes = $seconds % 60;
  my $hours = $minutes/60;
  my $days = $hours/24;
  say "$days days, $hours hours, $minutes minutes and $secs seconds";
}
say timr(500000)
