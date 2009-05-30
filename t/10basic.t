#!perl -w

use strict;
use Test::More tests => 3;

# ======================================================================
#   $version = $Carp::Clan::VERSION;
# ======================================================================

BEGIN {
    use_ok( 'Carp::Clan', 'Use Carp::Clan' );
}

SKIP: {
    skip 'Test::Exception not installed', 1
        unless eval {
        require Test::Exception;
        Test::Exception->import;
        };

    lives_ok(
        sub {
            Carp::Clan->import(qw(^Carp\\b));
            return 1;
        },
        'No errors importing'
    );
}

is( Carp::Clan->VERSION, '5.7', 'version' );
