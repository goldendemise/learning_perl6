use v6;
for $*ARGFILES  {
say $file;
say $*ARGFILES.path.absolute;
$*ARGFILES.on-switch= {say "x" x 20, say $*ARGFILES.path.absolute, say "x" x 20} };
LAST { say "All done."}
}

#ad omnia finem
#to the end of everything
