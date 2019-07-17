#EX2.2
#`[
sub MAIN($arg1,$arg2 = "cream", $arg3 = "pie") {

  say $arg1;
  say $arg2;
  say $arg3;
}
]
#EX 2.3
#Question mark after a parameter indicate that it's optional
#`[
sub MAIN($arg1?) {
  if $arg1.defined {
    say "Your name is " ~ $arg1;
  } else {
  print "What is your name? ";
  my $reply = prompt;
  say "Your name is " ~ $reply;
}
}
]
#EX2.9
#`[
my $response = prompt "Enter desired multiple: ";
loop {
  state $running = 0;
  ++$running;
  say $running if $running % $response == 0;
  last if $running > 100;
}
]

#EX2.11
#fizzbuzz
#`[
for 1..100 -> $iter {
  print "Fizz" if $iter % 3 == 0;
  print "Buzz" if $iter % 5 == 0;
  print $iter unless $iter % 5 == 0 or $iter % 3 == 0;
  print "\n";
}
say "Code took {now - INIT now} second to run";


for 1..100 -> $iter {
  if $iter % 5 == 0 and $iter % 3 == 0 {say "FizzBuzz";}
  elsif $iter % 3 {say "Fizz";}
  elsif $iter % 5 {say "Buzz";}
  else {say $iter;}
}
say "Code took {now - INIT now} second to run";
]

#EX2.12
sub MAIN(Int $upper = 100,  $pivot = $upper/2){
  loop {
    state $number = $upper.rand.Int;
    if $number > $pivot.round {
      say "The number is greater than " ~ $pivot.round
    }elsif $number < $pivot.round
    my $response = prompt "Please submit your guess: ";
    if $response > $number {say "Too High";}
    elsif $response < $number {say "Too Low";}
    else {say "You got it!"; exit;}
  }


}
