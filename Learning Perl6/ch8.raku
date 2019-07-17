#`[You can call .IO on any string to turn it into an IO::Path object
i.e., my $unix-path = '/home'.IO;
you can use .add to add a parent directory to a path, i.e.:
$with-parent = $unix-path.add: 'parentDirName'
without argument, the .absolute method uses the current working directory of
what it's called on to generate the full absolute path
the .is-absolute is Boolean
you can call .resolve on .. and . pseudo files and it will resolve them
you can insist a file exists with the :completely adverb like so:
put $file.absolute('/home/..').IO.resolve: :completely

File Test operators work as follows(.e tests for file existence):
my $file = '/some/path';
unless$file.IO.e {
put "the file does not exist";
}
You can also smart match against file test adverbs,i.e.:
if $file.IO ~~ :e & :f { #this is a Junction
put "Size is {.s}";
}

Methods:
e > exists
d > Is a directory
f > Is a plain file(implies .e)
s > Size in bytes
l > Is a symlink
r > is readable by current user
w > is writeable by current user
rw > r/w permissions available to current user
x > is executable by current user
rwx > 777 permissions for current user
z > Exists with zero size

The .mode function will return the POSIX permissions for a file, i.e.:
my $mode = $file.IO.mode;
put $mode.fmt: '%04o'; # 0644

You can use the .chmod subroutine as follows:
chmod $file.IO.chmod: 0o755;
Using .modified, .accessed, and .changed methods return 'instant' objects, use .DateTime to make them human readable

you can use indir to run portions of code inside a specific dirjectory without modifying the $*CWD
dir  gets a Seq of the files in a directory as path objects, you can specify with an argument or the current with none
relative directory arguments return relative paths
use File::Directory:Tree has the rmtree command, which recursively removes a directory and all its contents

use 'warn' to output a message to STDERR
#EX8.1
my $file-list = prompt "Please enter a comma delimited list of files> ";
for $file-list.split(",") -> $file {
 say "No such file \"{$file.trim}\"" and  next unless $file.trim.IO.e;
given $file.trim.IO {
  put "You have the following permissions for file {$file.trim}:";
  when .r { print "r"; proceed}
  when .w { print "w"; proceed}
  when .x { print "x"; proceed}
print "\n";
}
}
#EX8.2
say $*HOME;
my $other-path = "/opt".IO;
chdir $other-path;
say $*CWD;

#EX8.3
my @file-path = dir "/etc";
my $counter = 0;
for @file-path.sort -> $file {
  say ++$counter ~ $file;
}


#EX8.4
#TODO: Fix this sort
sub dirlister($dir) {
  for dir $dir.sort -> $file {
    $file.IO.d ?? say "$file", dirlister $file!! say "$file";
  }
}
dirlister "/home/ofperfection/Documents";

#EX8.5
sub MAIN($subdir-to-create) {
  unless not $subdir-to-create.IO.e {die "Directory already exists"}
  unless $subdir-to-create.IO.is-absolute {die "Please specify an absolute path"}
  mkdir $subdir-to-create;
}
]
#EX8.12
sub MAIN()
