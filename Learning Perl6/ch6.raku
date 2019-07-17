use v6;
#`[
the .permutations method will return a list of lists; of all possible combinations of the items therein
you can call .flat method to flatten unless the list is in a sigil, then use | (vertical bar)
the .rotor method breaks a list into a number of lists containing the number of elements you specify
the Z (.zip method) operator pairs items in a list 1:1 until one of the lists is empty
the X operator returns all combinations, a bit like permutations method
i.e., @array1 X @array2
or <val val1 val2> Z <xal xal1 xal3>
there are also operators <<+>> which can add corresponding elements from 2 different arrays
you could concatenate with <<~>>, subtract, etc. you can use >>+<< to do the same but force same size arrays

]
#EX6.2
#`[
for lines() {
  state $num = 1;
  say $num ~ " " ~ $_ ~ " | Line has " ~ $_.words.elems;
  $num++;
}]

#EX6.3
#`[
my $butterfly-genus = "Pyrrhogyra";
for lines() {
say $_ if $_.contains($butterfly-genus);
}]

#EX6.4
#`[
my $iter = 0;
my $iter2 = 0;
for 'a'..'zz' {
  $iter++;
}
for 'aa' .. 'zz' {
  $iter2++;
}
say $iter;
say $iter-2;
]
#EX6.5
#`[
for "B5".."F9" {
  say $_;
}
#EX6.8
for @*ARGS -> $arg {
  say $arg;
}
#EX6.9
my @a-thru-f = "a".."f";
my @reverse = @a-thru-f.splice( 0,*-1).reverse;
say @reverse;ar
kilkil
#EX6.10
my @a-thru-f = "a".."f";
@a-thru-f.splice(0,1);
@a-thru-f.splice: 0,0,"A";
@a-thru-f.splice: *-1,1;
@a-thru-f.splice: *,0,"F";

#EX6.11
for lines.rotor(3) {
  say $_[1];
}

#EX6.12
my $alphabet = 'a'..'z';
my $nums = 1..26;
for zip @$alphabet, @$nums { .say }

#EX6.13
my @suits = '♠', '♥', '♦', '♣';
my @nums = 1,2,3,4,5,6,7,8,9,10,"jack ","queen ", "king ", "ace ";
for @suits {say $_ X @nums}
]
#EX6.14
my @suits = '♠', '♥', '♦', '♣';
my @nums = 1,2,3,4,5,6,7,8,9,10,"jack ","queen ", "king ", "ace ";
my @deck = @suits X @nums;
for @deck.pick(25).rotor(5) {

}
