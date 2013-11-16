exicals (this applies to both the B<SelfLoader> and the Autoloader).
The C<vars> pragma provides an alternative to defining package-level
globals that will be visible to autoloaded routines. See the documentation
on B<vars> in the pragma section of L<perlmod>.

=head2 SelfLoader and AutoLoader

The B<SelfLoader> can replace the AutoLoader - just change 'use AutoLoader'
to 'use SelfLoader' (though note that the B<SelfLoader> exports
the AUTOLOAD function - but if you have your own AUTOLOAD and
are using the AutoLoader too, you probably know what you're doing),
and the C<__END__> token to C<__DATA__>. You will need perl version 5.001m
or later to use this (version 5.001 with all patches up to patch m).

There is no need to inherit from the B<SelfLoader>.

The B<SelfLoader> works similarly to the AutoLoader, but picks up the
subs from after the C<__DATA__> instead of in the 'lib/auto' directory.
There is a maintenance gain in not needing to run AutoSplit on the module
at installation, and a runtime gain in not needing to keep opening and
closing files to load subs. There is a runtime loss in needing
to parse the code after the C<__DATA__>. Details of the B<AutoLoader> and
another view of these distinctions can be found in that module's
documentation.

=head2 __DATA__, __END__, and the FOOBAR::DATA filehandle.

This section is only relevant if you want to use
the C<FOOBAR::DATA> together with the B<SelfLoader>.

Data after the C<__DATA__> token in a module is read using the
FOOBAR::DATA filehandle. C<__END__> can still be used to denote the end
of the C<__DATA__> section if followed by the token DATA - this is supported
by the B<SelfLoader>. The C<FOOBAR::DATA> filehandle is left open if an
C<__END__> followed by a DATA is found, with the filehandle positioned at
the start of the line after the C<__END__> token. If no C<__END__> token is
present, or an C<__END__> token with no DATA token on the same line, then
the filehandle is closed.

The B<SelfLoader> reads from wherever the current
position of the C<FOOBAR::DATA> filehandle is, until the
EOF or C<__END__>. This means that if you want to use
that filehandle (and ONLY if you want to), you should either

1. Put all you