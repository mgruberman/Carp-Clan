#!perl

use strict;
use ExtUtils::MakeMaker;
my @PREREQ_PM;

if ( prompt( 'Use Object::Deadly for tests? [Ny]', 'no' ) =~ /\Ay/imx ) {
    push @PREREQ_PM, ( 'Object::Deadly' => '0.08' );
}

WriteMakefile(
    NAME          => 'Carp::Clan',
    VERSION_FROM  => 'Clan.pm',
    PREREQ_PM     => { @PREREQ_PM, },
    ABSTRACT_FROM => 'Clan.pod',
    AUTHOR        => 'Joshua ben Jore <jjore@cpan.org>',
    dist          => { COMPRESS => 'gzip -9', SUFFIX => 'gz', },
    clean => { FILES => 'Carp-Clan-*', },
);
