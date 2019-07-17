s
#EX4.1 -> EX4.2-> EX4.3
#PAGE 70 CONTAINS A LIST OF ADVERBS
#`[loop {
  my $args = prompt "Enter a word to count the characters:";
  say $args.chars;
  say "This text contains 'Hamad'" if $args.fc.contains: "Hamad";
  last if not $args.chars;
}
#EX4.4
#prompt for 2 numbers, output quotient, sum, difference, and product

my $num1 = prompt "Enter the first number:";
my $num2 = prompt "Enter the second number:";
say "The sum is {$num1 + $num2};
The product is {$num1 * $num2};
The difference is {$num1 < $num2 ??  $num2 - $num1 !! $num1 - $num2};
The quotient is {$num1 < $num2 ??  $num2 / $num1 !! $num1 / $num2}";

say qq/I guess this is fine/;
#say q :to <END>;
#I think my father was on NZT that night.
#I couldn't say
#here is another
#testing third string
#END
say "\c[BUTTERFLY]";
#EX4.1
say qx/hostname/;

You can substitute qq in the following fashion:
qq/\$value to inerpolate/
or Q :qq /\answer is type {$answer.^name}/;
\c[NAMEOFCHARACTER];

q  :to<END>;
do stuff
END
use fold case  for contains, starts-with and ends-with to make args case insensitive
To coerce strings to numbers, use + prefix
To coerce numbers to strings, use ~ prefix
To check if a str can be converted to a number, use the 'val'  routine.->
it will return 'Numeric' if it can be coerced.

%*ENV<PATH> = '/bin:/sbin'
$*DISTRO.is-win returs true if you're on windows and false otherwise
qx/shell-comand/ will return the output of the shell command specified between the delimiters
]
