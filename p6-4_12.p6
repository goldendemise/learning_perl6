#!/usr/bin/env perl6

sub do-n-times(&funct,$number) {
  return if $number <= 0;
  &funct();
  do-n-times &funct, $number - 1;
}
sub greet {
  say "OK";
}
my $wat = sub { say "Carpe Noctem";}
#do-n-times(&greet ,6);
do-n-times($wat, 6);
