#You can build your own subset to test for specific properties
#i.e.
subset Non-negative-int of Int where { $_ >= 0 };

sub factorial(Non-negative-int $n) {
  return 1 if $n == 0;
  return $n * factorial $n-1;
}

#alternatively you can write this inline
sub func-name(Int $n where $n > 0) {
  say "stuff";
}

#using multi subroutines runs a specific form of the subroutine based on its signature
multi sub fact(0) {1};
multi sub fact(Int $n where $n > 0) {
  $n * fact $n-1;
}
