use strict;
use warnings;
use Test::More;

use Testing::Statement;

my $t = Testing::Statement->new(foo => 'bar');
is $t->meow(), 'meow';
is $t->roar(), 'roar';

my $t2 = Testing::Statement->new(foo => 'bar');
is $t2->meow(1), 'MEOW!';

done_testing;
