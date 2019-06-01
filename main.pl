use warnings FATAL => 'all';
use strict;


use lib '.';
require player_data;

BEGIN
{
    print "test!\n";
}

sub init()
{

    print "init\n";
    print Player_Data::add(4, 4) . "\n";
    return 0;

}

sub health_test
{
    my ($amount, $function) = @_;
    print
          "Staring Player Health (" . Player_Data::get_health() . ")" . "\n"
        . "Amount being delt ... ($amount)" . "\n"
        . "ending amount ....... (" . $function->($amount) . ")\n\n";
}

health_test(44, *Player_Data::heal);

health_test(100, *Player_Data::do_damage);



my $rv = init();
if ($rv == 0) {
    print "everything worked normally\n";
}

else
{

    print "something went wrong\n";
}
