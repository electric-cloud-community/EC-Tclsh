# -------------------------------------------------------------------------
# Package
#    tclshDriver.pl
#
# Dependencies
#    None
#
# Purpose
#    Executes tcl code
#
# Template Version
#    1.0
#
# Date
#    11/03/2011
#
# Engineer
#    Carlos Rojas
#
# Copyright (c) 2011 Electric Cloud, Inc.
# All rights reserved
# -------------------------------------------------------------------------

# -------------------------------------------------------------------------
# Includes
# -------------------------------------------------------------------------
use ElectricCommander;
use warnings;
use strict; 
$|=1;

sub setProperties($) {

    my ($propHash) = @_;

    # get an EC object
    my $ec = new ElectricCommander();
    $ec->abortOnError(0);

    foreach my $key (keys % $propHash) {
        my $val = $propHash->{$key};
        $ec->setProperty("/myCall/$key", $val);
    }
}

sub main() {
    
    my %props;
    my $ec = ElectricCommander->new();
    $ec->abortOnError(0);
    $::gScript = ($ec->getProperty( "script" ))->findvalue('//value')->string_value;
    $props{"tclshCommandLine"} = $::gScript;
    setProperties(\%props);
}

main();

