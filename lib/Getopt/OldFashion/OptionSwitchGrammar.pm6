use v6;

unit grammar Getopt::OldFashion::OptionSwitchGrammar;

token TOP { <switch-label> [ '=' <type> ]? }

token switch-label { <long-switch-label> [ '|' [ <long-switch-label> | <short-switch-label> ] ]* }

token short-switch-label { <[a..z A..Z ?]> }
token  long-switch-label { <[a..z A..Z 0..9 -]> ** 2..* }

token type {
    [
        <string-type>  ||
        <integer-type> ||
        <numeric-type>
    ]
    <array-type>?
}

token array-type   { '@' }
token string-type  { 's' }
token integer-type { 'i' }
token numeric-type { 'n' }
