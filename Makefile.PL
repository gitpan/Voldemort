

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Voldemort',
    VERSION_FROM => 'lib/Voldemort.pm', # finds \$VERSION
    AUTHOR       => 'Spencer Portee (a.u.thor@a.galaxy.far.far.away)',
    ABSTRACT     => 'I like pants.',
    PREREQ_PM    => {
                     'Moose' => 1.02,
                     'Test::Simple' => 0.44,
                     'Google::ProtocolBuffers' => 0.08
                    },
);
