#!perl -T
use strict;
use Test::More tests => 1;

BEGIN {
    use_ok( 'Win32::Mock' );
}

diag( "Testing Win32::Mock $Win32::Mock::VERSION, Perl $], $^X" );
