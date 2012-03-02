use strict;
use warnings;
package App::epoch;

# ABSTRACT: Converts fuzzy time into local time

use Time::ParseDate;
use Time::Format qw(time_format);

use Exporter qw(import);

our @EXPORT_OK = qw(parse_time format_time);

sub parse_time {
    parsedate(join(' ',@_)) || time;
}

sub format_time {
    my $time = shift;
    my $formatstr = join(' ',@_) || 'yyyy-mm{on}-dd hh:mm{in}:ss tz';
    time_format $formatstr, $time;
}

1;
