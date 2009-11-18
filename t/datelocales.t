#!/usr/bin/perl -w
# -*- perl -*-

#
# Author: Slaven Rezic
#

use strict;
use Test::More;

use Acme::Study::OS::DateLocales;

plan tests => 1;

diag(weekday_and_month_names_dump());
pass 'Everything is dumped, thank you!';

__END__
