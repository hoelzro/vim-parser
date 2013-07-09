## no critic (RequireUseStrict)
package Vim::Parser;

## use critic (RequireUseStrict)
use strict;
use warnings;

1;

__END__

# ABSTRACT: A Perl module for parsing Vimscript

=head1 SYNOPSIS

    use Vim::Parser;

    my $parse_tree = Vim::Parser->parse_string($vimscript);
    # - or -
    my $parse_tree = Vim::Parser->parse_file($vimscript_file);
    # XXX flesh out example of what the parse tree looks like

=head1 DESCRIPTION

This module implements a parser for Vimscript, the configuration and
scripting language used by the Vim text editor.

=head1 METHODS

=head2 Vim::Parser->parse_string($string)

Parses the Vimscript code contained in C<$string>.  Returns a parse
tree that represents the parsed code.

=head2 Vim::Parser->parse_file($filename_or_filehandle)

Parses the Vimscript code contained in C<$filename_or_filehandle>,
which can be a filename or a filehandle.  Returns a parse tree like
L<parse_string|""/parse_string> does.

=head1 A WORD ON PARSING BAD SCRIPTS

I'm writing this module chiefly to provide a parser for
L<vimlint|https://github.com/hoelzro/vimlint>, so its requirements are
(currently) fairly specific to the use cases required by vimlint.  vimlint
will assume that its inputs are valid Vimscript, so this module (at least for
now) will as well.  So if you pass an invalid Vimscript document to this
parser, the return value is undefined.  I don't mean 'undefined' as in
C<undef>; I mean undefined as in you can't rely on it.  This may (and will
probably) change in the future.

=cut
