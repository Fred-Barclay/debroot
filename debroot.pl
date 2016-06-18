#!/usr/bin/perl

use strict;
use warnings;

use QtCore4;
use QtGui4;
use DebrootForm;

sub main {
    my $app = Qt::Application(\@ARGV);
    my $debroot = DebrootForm();
    $debroot->show();
    exit $app->exec();
}

main();
