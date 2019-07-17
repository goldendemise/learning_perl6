sub do-twice(&funct,$args) {
&funct($args);
&funct($args);
}
sub print-twice($args) {
  say $args;
  say $args;
}
do-twice(&print-twice,"What's up doc");
