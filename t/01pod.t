#!perl
use Test::More;

if ( not $ENV{AUTHOR_TESTS} ) {
    plan skip_all => 'Skipping author tests';
}
else {
    require Test::Pod;
    Test::Pod->import;
    my $version = Test::Pod->VERSION;
    if ( $version < 1.14 ) {
        die
            "Test::Pod::Coverage version 1.14 required--this is only version $version";
    }
    all_pod_files_ok();
}
