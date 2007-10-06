use strict;
use ExtUtils::MakeMaker;
eval "use ExtUtils::MakeMaker::Coverage";

WriteMakefile(
    NAME                => 'Win32::Mock',
    LICENSE             => 'perl',
    AUTHOR              => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>',
    VERSION_FROM        => 'lib/Win32/Mock.pm',
    ABSTRACT_FROM       => 'lib/Win32/Mock.pm',
    PREREQ_PM => {
        'Devel::FakeOSName' => 0,
        'ExtUtils::Command' => 0,
        'Test::More'        => 0,
    },
    PL_FILES            => {},
    test                => { TESTS => 't/*.t  t/*/*.t  t/*/*/*.t' },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Win32-Mock-*' },
);
