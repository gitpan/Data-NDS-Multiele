#!/usr/bin/perl -w

require 5.001;

$runtests=shift(@ARGV);
if ( -f "t/test.pl" ) {
  require "t/test.pl";
  $dir="t";
} elsif ( -f "test.pl" ) {
  require "test.pl";
  $dir=".";
} else {
  die "ERROR: cannot find test.pl\n";
}

unshift(@INC,$dir);
use Data::NDS::Multiele;

sub test {
  (@test)=@_;
  return $obj->path_valid(@test);
}

$obj = new Data::NDS::Multiele;
$obj->file("$dir/DATA.data.yaml");
$obj->default_element("def1","/usedef1","1");
$obj->default_element("def2","/usedef2","1");
$obj->default_element("def3","/usedef3","1");

$tests = "

/dh1 ~ 1

/dhx ~ 0

";


print "path_valid...\n";
test_Func(\&test,$tests,$runtests);

1;
# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 3
# cperl-continued-statement-offset: 2
# cperl-continued-brace-offset: 0
# cperl-brace-offset: 0
# cperl-brace-imaginary-offset: 0
# cperl-label-offset: -2
# End:

