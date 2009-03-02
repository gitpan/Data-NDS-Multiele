
use Module::Build;

my $build = Module::Build->new(
	license            => 'perl',
	dist_version       => '3.00',
	dist_author        => 'Sullivan Beck <sbeck@cpan.org>',
	module_name        => 'Data::NDS::Multiele',
	dist_abstract      => 'A set of data structures with the same structure',
	requires           => {
		'perl'                => '5.6.0',
		'Data::NDS'           => '0',
		'Storable'            => '0',
		'YAML::Syck'          => '0',
	},
	build_requires     => {
		'Test::More'          => '0',
	},
	build_recommends   => {
		'Test::Pod'           => '0',
		'Test::Pod::Coverage' => '0',
	},
	sign               => 1,
);

$build->create_build_script;
