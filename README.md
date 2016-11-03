# test-devel-cover
Testing Perl's Devel::Cover

# Description
Following some strange statement scores from tests at `$work`, it seemed
prudent to understand why the scores reported by [Devel::Cover](http://p3rl.org/Devel::Cover)
were fluctuating between builds, despite running the same code.

I have attempted to break the tests up into their relevant sections based on
the metric type I am testing.

I'll leave you with a word to the wise from
[Devel::Cover::Tutorial](http://p3rl.org/Devel::Cover::Tutorial).

> Testing never proves the absence of faults, it only shows their presence.

# Code coverage
From [Devel::Cover](http://p3rl.org/Devel::Cover)'s documentation.

> Code coverage metrics describe how thoroughly tests exercise code. By using
> [Devel::Cover](http://p3rl.org/Devel::Cover) you can discover areas of code not
> exercised by your tests and determine which tests to create to increase
> coverage. Code coverage can be considered an indirect measure of quality.

# Metrics
The different types of code coverage metrics.

## Statement
This is the most basic form of code coverage. A statement is covered if it is
executed.

```perl
  sub test {
    my $self = shift;

    # This is 2x statements. statement != line of code.
    my $this = 1; my $that = 1;
  }
```

Multiple statements on a single line can confuse issues - the reporting if
nothing else.

It can be quite difficult to achieve 100% statement coverage, specifically when
sections of code deal with error conditions or rarely occurring events.

```perl
  sub validate {
    my $c = shift;

    if ($c->param('uuid') eq '0') {
      die "This will only count if you explicitly test uuid=0";
    }

    return 1;
  }
```

## Branch
The goal of branch coverage is to ensure that whenever a program can jump, it
jumps to all possible destinations. The most simple example is a complete if
statement.

```perl
  # This is a branch
  if ($x) {
    print "a";
  }

  # This is also a branch
  print "a" if $x;
```

Full coverage is only achieved here if `$x` is true on one occasion and false on
another.

# Coverage options
For all available options, please consult the
[documentation](http://p3rl.org/Devel::Cover#OPTIONS).

If you're using [Moo](http://p3rl.org/Moo) or [Moose](http://p3rl.org/Moose) and
want to report on your `POD` coverage, you might want to ignore the `BUILD`,
`BUILDARGS` and `DEMOLISH` lifecycle routines by making them private.

Passing the option `pod-also_private-BUILD` is case-sensitive and is essentially
the same as `\*BUILD\*`, so it will ignore `BUILDARGS`, `xBUILD` etc. See
[Pod::Coverage](https://p3rl.org/Pod::Coverage#Methods) for a full list of
symbols that are regarded as private.

```
PERL5OPT=-MDevel::Cover=-coverage,pod-also_private-BUILD-DEMOLISH prove -l t
```

# References

  - [Code Coverage - Tales From the Trenches](http://pjcj.net/presentations/yapc-eu-2003-dc/slide001.html)
  - [Devel::Cover](https://p3rl.org/Devel::Cover)
  - [Pod::Coverage](https://p3rl.org/Pod::Coverage)
