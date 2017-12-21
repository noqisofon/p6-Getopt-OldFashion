use v6;

unit class Getopt::OldFashion;

my grammar OptionSwitchGrammar {
    token TOP { <switch-label> [ '=' <type> ]? }

    token switch-label { <long-switch-label> [ '|' <long-switch-label> | <short-switch-label> ]* }

    token short-switch-label { <[a..z A..Z ?]> }
    token long-switch-label  { <[a..z A..Z]><[_ a..z A..Z 0..9]>+ }
    
}

sub get-options(Str @definisions, Str @ARGV = @*ARGS, Bool :$pass-through = False) returns Hash[Str:D] is export {
    my $parser = Getopt::Tall.new( :$pass-through );

    for @definisions -> $definision {
        my ($short-switch, $long-switch, $type) = GetoptionGrammar.parse( $definision );
    }
}
