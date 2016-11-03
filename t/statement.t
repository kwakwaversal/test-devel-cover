use strict;
use warnings;
use Test::More;

use Testing::Statement;

my $t = Testing::Statement->new(foo => 'bar');
is $t->meow(), 'meow';
is $t->roar(), 'roar';

my $t2 = Testing::Statement->new(foo => 'bar');
is $t2->meow(1), 'MEOW!';
is $t2->meow(2), 'meow'; # for 100% condition coverage

done_testing;
