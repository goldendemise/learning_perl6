#last, if, redo, and next are control structures for loops
#Phasers can be run before a loop (FIRST) after a loop (LAST) or between loop iterations (NEXT)
#Exercise 5.1
#`[
loop {
state $iter = 12;
last if $iter >= 75;
say "$iter, {$iter + 1}, {$iter + 2}";
$iter += 3;
FIRST { say "starting"}
}]

#EX5.2
#`[
my $iter = 12;
while $iter <= 75 {
  print $iter ~ " "; print $iter + 1 ~ " " unless $iter + 1 >75;
   print $iter + 2 unless $iter + 2 > 75; print "\n";
  $iter +=3;
  LAST { say  "this is the last loop"}
}]

 #You can bind to a block with :=, which will make the subject not re assignable
 # a callable code object uses an ampersand sigil
 #A block can't use a return statement, as it's not quite a subroutine
 #signature: the parameter list of a code object
 #if a block has no arguments, you can use $_ for  a single optional parameter
 #You can alternatively use @_[] for multiple parameters
 #if you change $_, you change the original value because implicit signatures make args writeable

 #EX5.3
 my $burnana = " bAnAnA rAmA ";
 my &norml = { $_ =  $_.lc.trim }
norml $burnana;
say $burnana;
