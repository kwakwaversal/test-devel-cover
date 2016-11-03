use strict;
use warnings;
use Test::More;

use Testing::Statement;

my $t = Testing::Statement->new(foo => 'bar');
is $t->roar(), 'ROAR!';

done_testing;
