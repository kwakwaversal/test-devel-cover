package Testing::Statement;

use Moo;
use Types::Standard qw/:all/;

has foo => (is => 'ro', => isa => Str);

sub roar {
  my $self = shift;

  return 'ROAR!';
}

1;
