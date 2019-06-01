package Player_Data;
use strict;
use warnings FATAL => 'all';

use Exporter qw(import);
our @EXPORT_OK = qw(add set_health do_damage heal);


my $name;
my $health;
my $max_health;

BEGIN{

    $name = "Swifty";
    $health = 100;
    $max_health = 200;
    print "Player Data being init'd with name($name) and health($health)\n";
}

sub set_health
{
    $health = @_;
    return $health;
}

sub do_damage
{
    
    $health = $health - $_[0];
    if($health < 0)
    {
        $health = 0;
    }
    return $health;
}

sub heal
{
    $health += $_[0];
    if($health > $max_health)
    {
        $health = $max_health;
    }
    return $health;
}

sub get_health
{
    return $health;
}


sub add
{
    my ($x, $y) = @_;
    print scalar( @_) . "\n";
    return  $x + $y;
}

1;