#!perl

use strict;
use ExtUtils::MakeMaker;
my %PREREQ_PM;

if (prompt( 'Add Object::Deadly 0.08+ to prerequisites for testing? [Ny]',
        'no' ) =~ /\Ay/imx
    )
{
    $PREREQ_PM{'Object::Deadly'} = '0.08';
}

WriteMakefile(
    NAME          => 'Carp::Clan',
    AUTHOR        => 'Joshua ben Jore <jjore@cpan.org>',
    VERSION_FROM  => 'lib/Carp/Clan.pm',
    ABSTRACT_FROM => 'lib/Carp/Clan.pod',
    PREREQ_PM     => { %PREREQ_PM, },
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Carp-Clan-*', },
);
