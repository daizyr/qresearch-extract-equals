my $thread = $ARGV[0];
$thread =~ s/\.html//g;
my $html = <>;
$html =~ m/title" content="([^"]+)" \/>/g;
my $title = $1;
#  <time unixtime="1518061123" datetime="2018-02-08T03:38:43Z">02/08/18 (Thu) 03:38:43</time>
$html =~ m/datetime="([^"]+)"/;
my $time = $1;

my @links = ( $html =~ /([-_0-9a-zA-z\s'"?]+ = [-_0-9a-zA-Z\s'"?=,:\/]+)/gis );

my %links;
foreach my $l (@links) {
  ++$links{$l};
}
 
print qq{>[$time] $title\n};
print qq{>>>/qresearch/$thread\n};
foreach my $l (keys %links) {
  print qq{>$l\n};
}
