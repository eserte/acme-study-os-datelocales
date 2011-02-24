# -*- perl -*-
use 5.008;
use ExtUtils::MakeMaker;

my $eumm_recent_enough = $ExtUtils::MakeMaker::VERSION >= 6.54;

if (!$eumm_recent_enough) {
    *MY::dist_core = sub {
	<<'EOF';
dist :
	$(NOECHO) $(ECHO) "Sorry, use a newer EUMM!"

EOF
    };
}

WriteMakefile(NAME          => 'Acme::Study::OS::DateLocales',
	      AUTHOR        => 'Slaven Rezic <srezic@cpan.org>',
	      VERSION_FROM  => 'DateLocales.pm',
	      ABSTRACT_FROM => 'DateLocales.pm',
	      LICENSE       => 'perl',
	      ($eumm_recent_enough
	       ? (META_MERGE => { resources => { repository => 'git://github.com/eserte/acme-study-os-datelocales.git' },
				})
	       : ()
	      ),
	      PREREQ_PM => { 'Data::Dumper' => 0,
			     'File::Spec::Functions' => 0,
			     'POSIX' => 0,
			     'Test::More' => 0,
			   },
	     );
