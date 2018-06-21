my $html = <>;
my @links = ( $html =~ /[1-9][0-9]+.html/gis );

my %links;
foreach my $l (@links) {
  ++$links{$l};
}

foreach my $l (keys %links) {
  print qq{https://8ch.net/qresearch/res/$l\n};
}
