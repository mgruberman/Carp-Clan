#!perl

use strict;
use ExtUtils::MakeMaker;

my %PREREQ_PM = (
		 'Test::Exception' => 0,
		);

WriteMakefile(
    NAME          => 'Carp::Clan',
    AUTHOR        => 'Joshua ben Jore <jjore@cpan.org>',
    VERSION_FROM  => 'lib/Carp/Clan.pm',
    ABSTRACT_FROM => 'lib/Carp/Clan.pod',
    PREREQ_PM     => \ % PREREQ_PM,
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Carp-Clan-*', },
);
