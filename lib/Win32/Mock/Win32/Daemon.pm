package Win32::Daemon;
use strict;
require Exporter;

{   no strict;
    @ISA = qw(Exporter);
    @EXPORT = qw(SERVICE_STOPPED SERVICE_RUNNING SERVICE_PAUSED);
}


use constant {
    SERVICE_STOPPED     => 0, 
    SERVICE_RUNNING     => 1,
    SERVICE_PAUSED      => 2,
};



1
