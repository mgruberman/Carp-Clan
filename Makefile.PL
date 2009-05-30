#!perl

use strict;
use ExtUtils::MakeMaker;

my %PREREQ_PM = (
		 'Test::Exception' => 0,
		);

# Object::Deadly uses Carp::Clan for its runtime. This is a circular
# dependency and is resolved by installing Carp::Clan without
# Object::Deadly. Once Object::Deadly is installed, Carp::Clan may use
# it for testing.
if (prompt( 'Add Object::Deadly 0.08+ to prerequisites for testing? [Ny]',
        'no' ) =~ /^y/i
    )
{
    $PREREQ_PM{'Object::Deadly'} = '0.08';
}

WriteMakefile(
    NAME          => 'Carp::Clan',
    AUTHOR        => 'Joshua ben Jore <jjore@cpan.org>',
    VERSION_FROM  => 'lib/Carp/Clan.pm',
    ABSTRACT_FROM => 'lib/Carp/Clan.pod',
    PREREQ_PM     => \ % PREREQ_PM,
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Carp-Clan-*', },
);
