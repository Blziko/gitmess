#!/usr/bin/env perl

use strict;
use warnings;

my %groups = (
    add      => [],
    modified => [],
    remove   => [],
);

while (<STDIN>) {
    chomp;

    if (/^\s*new file:\s+(.+)/) {
        push @{$groups{add}}, $1;
    }
    elsif (/^\s*modified:\s+(.+)/) {
        push @{$groups{modified}}, $1;
    }
    elsif (/^\s*deleted:\s+(.+)/) {
        push @{$groups{remove}}, $1;
    }
}

my @messages;

for my $file (@{$groups{add}}) {
    push @messages, "-m 'add: $file'";
}

for my $file (@{$groups{modified}}) {
    push @messages, "-m 'modified: $file'";
}

for my $file (@{$groups{remove}}) {
    push @messages, "-m 'remove: $file'";
}

if (@messages) {
    print "Your git commit message is ready\n";
    print "\033[1;31m> \033[0;32mgit commit " . join(' ', @messages) . "\033[0m\n";
} else {
    print "Nothing canged.\n";
}