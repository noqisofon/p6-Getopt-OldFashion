use v6;

use Getopt::OldFashion;


my %opts = get-options( <help|?>, <--help> );

say %opts;
