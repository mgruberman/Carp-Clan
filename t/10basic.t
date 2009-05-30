#!perl -w

use strict;
use Test::More tests => 2;
use Test::Exception;

use_ok( 'Carp::Clan', 'Use Carp::Clan' );

lives_ok(
    sub {
        Carp::Clan->import(qw(^Carp\\b));
        return 1;
    },
    'No errors importing'
);
