use v6;

use Getopt::OldFashion::OptionSwitchGrammar;

unit class Getopt::OldFashion;


sub get-options(@definisions, @ARGV = @*ARGS, Bool :$pass-through = False) returns Hash[Str:D] is export {
    my $parser = Getopt::OldFashion.new( :$pass-through );

    for @definisions -> $definision {
        my ($short-switch, $long-switch, $type) = Getopt::OldFashion::OptionSwitchGrammar.parse( $definision );
    }
}
