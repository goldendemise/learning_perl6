#EX3.3
#`[`
sub MAIN($num-to-test) {
given $num-to-test {
  say $num-to-test.WHAT;
}
}
]
loop {
  state $running-total = 0;
  state $val = 0;
  last if $running-total >= 100;
  say "adding $val to 1 / $val";
  $running-total += 1/($val + 1);
  $val++;
  say $running-total;
}
