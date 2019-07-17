#!/usr/bin/env perl6
#these are way easier when you don't read the instructions correctly
sub is-palindrome($word) {
  return False unless $word eq $word.flip;
  return True;
}

#recursion time
sub get-first-letter ($word) {
  return substr $word,0,1;
}
say get-first-letter("ok");
