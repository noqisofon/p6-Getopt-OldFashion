# -*- mode: perl6; -*-
use v6;
use lib '../lib'
use Test;

my token long-option-switch { <[a..z A..Z 0..9]>+ [ '-' <[a..z A..Z 0..9]>+ ]* };

my @valid-labels   = <time time-style width tabsize context numeric-uid-gid indicator-style hide-control-chars>;

my @unvalid-labels = <foo--bar>;

plan 2;

subtest 'valid label test' => {
    plan @valid-labels.elems;

    for @valid-labels -> $label {
        like $label, /^ <long-option-switch> $/, "`$label' is valid long option switch label";
    }
}

subtest 'unvalid label tests' => {
    plan @unvalid-labels.elems;
    
    for @unvalid-labels -> $label {
        unlike $label, /^ <long-option-switch> $/, "`$label' is unvalid long option switch label";
    }
}
done-testing;
