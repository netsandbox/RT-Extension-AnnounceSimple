use strict;
use warnings;

use lib 'xt/lib';
use RT::Extension::AnnounceSimple::Test nodb => 1, tests => undef;

require_ok("RT::Extension::AnnounceSimple");
require_ok("RT::Extension::AnnounceSimple::Test");

done_testing;
