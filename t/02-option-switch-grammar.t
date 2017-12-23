# -*- mode: perl6; -*-
use v6;
use lib 'lib';
use Test;

use Getopt::OldFashion::OptionSwitchGrammar;

my @definitions = <help|man|usage|h|? length=i file=s verbose tab-size=i library=s library=s@ quoting-style=s>;

plan @definitions.elems;

for @definitions -> $definition {
    my $match-result = Getopt::OldFashion::OptionSwitchGrammar.parse( $definition );

   is $definition.chars, $match-result.to, "it can parse \"$definition\"";
}

done-testing;
