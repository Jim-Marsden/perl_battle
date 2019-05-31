use warnings FATAL => 'all';
use strict;


use lib '.';
require player_data;
sub init()
{

    print "init\n";
    print Player_Data::add(4, 4) . "\n";
    return 0;

}

sub health_tests
{
    my $damage_to_deal = 55;
    print 
        "Staring Player Health (" . Player_Data::get_health() . ")" . "\n"
        . "Amount being delt   ($damage_to_deal)" . "\n"
        . "ending amount       (" . Player_Data::do_damage($damage_to_deal) . ")\n";
         #"health before damage: " . Player_Data::get_health() . " and damage "
        #. "damage delt will be $damage_to_deal and the final health is " 
        #. Player_Data::do_damage($damage_to_deal) . "\n\n";

    
    #print "health is " . Player_Data::get_health() . "\n
    #damage_to_deal = $damage_to_deal\n health after: " . Player_Data::do_damage($damage_to_deal) . "\n" .
    #" " . Player_Data::get_health();

}


health_tests();
health_tests();

my $rv = init();
if ($rv == 0) {
    print "everything worked normally\n";
}

else
{
    print "something went wrong\n";
}
