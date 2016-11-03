package Testing::Statement;

use Moo;
use Types::Standard qw/:all/;

has name => (is => 'lazy', => isa => Str);

sub meow {
  my ($self, $loudly) = @_;

  if ($loudly && $loudly == 1) {
    return 'MEOW!';
  }

  return 'meow';
}

sub roar {
  my ($self) = @_;

  return 'roar';
}

1;

=head1 NAME

Testing::Statement - Testing statement coverage

=head1 DESCRIPTION

L<Testing::Statement> is used to help understand and test metrics reported
on by L<Devel::Cover>.

=head1 METHODS

L<Testing::Statemtnt> implements the following methods.

=head2 meow

It's what cats do.

=head2 roar

It's what bigger cats do.

=head1 SEE ALSO

L<Devel::Cover>.

=cut
