# -*- mode: perl6; -*-
use v6;

use Test;
use Getopt::OldFashion;

plan 3;

my %defaults = (
    file   => 'file.dat',
    length => 24
);

my %opts;
{
    %opts = get-options( <length=i file=s verbose>, <--length=42 --file=hoge.txt> );

    CATCH {
        note 'Error in command line arguments';
    }
}

for %defaults -> $key, $value {
    %opts{$key} = %defaults{$key} unless %opts{$key}:exists;
}

is 42        , %opts<length>;
is 'hoge.txt', %opts<file>;
ok %opts<verbose>;

done-testing;
