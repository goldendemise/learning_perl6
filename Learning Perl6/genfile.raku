use v6;
my $path = 'generated-file.txt'.IO;

unless my $fh = open $path, :w {
  die "unable to open file in the $path variable";
}

for 1..100 -> $i {
  $fh.say: $i;
}

$fh.close;
