#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use Stocks::DirectorShitlist;

Stocks::DirectorShitlist->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use Stocks::DirectorShitlist;
use Plack::Builder;

builder {
    enable 'Deflater';
    Stocks::DirectorShitlist->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use Stocks::DirectorShitlist;
use Stocks::DirectorShitlist_admin;

use Plack::Builder;

builder {
    mount '/'      => Stocks::DirectorShitlist->to_app;
    mount '/admin'      => Stocks::DirectorShitlist_admin->to_app;
}

=end comment

=cut

