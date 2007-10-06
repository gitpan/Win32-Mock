use strict;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Win32::Mock',
    license             => 'perl',
    dist_author         => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>',
    dist_version_from   => 'lib/Win32/Mock.pm',
    requires => {
        'Devel::FakeOSName' => 0,
        'ExtUtils::Command' => 0,
    },
    recommends => {
        'Data::GUID'        => 0,
        'File::HomeDir'     => 0,
    }, 
    build_requires => {
        'Test::More'        => 0,
    },
    test_files          => [qw(t/*.t  t/*/*.t  t/*/*/*.t)],
    add_to_cleanup      => [ 'Win32-Mock-*' ],
);

$builder->create_build_script();
