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

```
  Testing never proves the absence of faults, it only shows their presence.
```

# References

  - [Code Coverage - Tales From the Trenches](http://pjcj.net/presentations/yapc-eu-2003-dc/slide001.html)
