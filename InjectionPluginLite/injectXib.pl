#!/usr/bin/perl -w

#  injectXib.pl
#  InjectionPlugin
#
#  Created by Alexandru Tudose on 02.02.2014.
#

use strict;
use FindBin;
use lib $FindBin::Bin;
use common;
use File::Basename;

my($xibFileName, $directories, $suffix) = fileparse($selectedFile, ".xib");
#print "Parse in file: $xibFileName suffix: $suffix\n";

my($execFileName, $appDirectory) = fileparse($executable);
#print "Parse out directory: $appDirectory \n";

my $nibFilePath = $appDirectory . $xibFileName . ".nib";

print "Compiling xib file:\n";
my $xibCompileCommand = "ibtool $selectedFile --compile $nibFilePath";
print $xibCompileCommand . "\n";

0 == system ("ibtool", "$selectedFile", "--compile", "$nibFilePath")
or error "Could not compile $selectedFile.";

my $appBundle = $selectedFile;

# todo, fix below line to inject nib to devices
if ( $isDevice ) {
    $appBundle = copyToDevice( $appBundle, "$deviceRoot/tmp/Storyboard.bundle", "\\.nib\$" );
}

print "Injecting nib in bundle: $appBundle\n";
#print "!\@$appBundle\n";

print "\n\n";
