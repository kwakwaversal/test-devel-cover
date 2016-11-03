package Testing::Branch;

use Moo;
use Types::Standard qw/:all/;

has name => (is => 'lazy', => isa => Str);

sub add {
  my ($self, $num) = @_;

  if ($num && $num == 1) {
    return 1;
  }
  elsif ($num && $num == 2) {
    return 2;
  }
  else {
    return 0;
  }
}

1;

=head1 NAME

Testing::Branch - Testing branch coverage

=head1 DESCRIPTION

L<Testing::Branch> is used to help understand and test metrics reported on by
L<Devel::Cover>.

=head1 METHODS

L<Testing::Branch> implements the following methods.

=head2 add

You can do it if you try. Mostly.

=head1 SEE ALSO

L<Devel::Cover>.

=cut
