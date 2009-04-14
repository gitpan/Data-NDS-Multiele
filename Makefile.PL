
use ExtUtils::MakeMaker;

WriteMakefile(
        NAME             => 'Data::NDS::Multiele',
        VERSION          => '3.10',
        ($] >= 5.005
        ? (ABSTRACT=>'A set of data structures with the same structure',
           AUTHOR  =>'Sullivan Beck (sbeck@cpan.org)')
        : ()),
        'dist' => {COMPRESS=>'gzip',SUFFIX=>'gz'},
        PL_FILES  => {},
        PREREQ_PM => {
                'Data::NDS'           => '0',
                'Storable'            => '0',
                'YAML::Syck'          => '0',
                'Test::More'          => '0',
                'Test::Pod'           => '0',
                'Test::Pod::Coverage' => '0',
        },
);
