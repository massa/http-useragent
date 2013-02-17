class LWP::UserAgent;

has Int $.timeout = 180;

method get(Str $url) {
    my ($domain, $file) = split_url($url);

    # GET REQUEST
    ## TODO
}

sub split_url($url is copy) {
    $url .= lc;
    if $url.index('http://') && $url.index('http://') == 0 {
        $url = $url.substr($url.index('/')+2);
    }
    my $file = !$url.index('/') ?? '/' !! $url.substr($url.index('/'));

    if $url.index('/') {
        $url = $url.substr(0, $url.index('/'));
    }
    return ($url, $file);
}