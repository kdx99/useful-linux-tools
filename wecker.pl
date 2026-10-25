#!/usr/bin/perl

# Friendly task reminder
# put in your crontab like
# 11 11 11 11 * perl wecker.pl "Carneval starts !"

use strict;
use Tk;
use utf8;
use Encode qw(decode encode);

my $input = $ARGV[0];
my $message = decode("utf8", $input);
$message = "Reminder" unless $ARGV[0];

my $main = MainWindow->new;
$main -> Label( -text=>$message, -height=>"20", -width=>"40")->pack;
$main -> Button( -text=>'quit', -command=>'exit')->pack;

MainLoop;

