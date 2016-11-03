use strict;
use warnings;
use Test::More;

use Testing::Branch;

my $t = Testing::Branch->new(name => 'Jim');
is $t->add(), 0;
is $t->add(1), 1;
is $t->add(2), 2;
is $t->add(3), 0;

done_testing;
