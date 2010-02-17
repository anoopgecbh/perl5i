#!perl

use Test::More 'no_plan';
use perl5i::latest;

is( 12.34->ceil, 13);
is( 12.34->floor, 12);
is( 12.34->int, 12);
ok( 12->is_number );
ok(!'FF'->is_number );
ok( 12->is_whole_number );
ok(!12.34->is_whole_number );
ok( 12->is_integer );
ok(!12.34->is_integer );
ok( 12->is_int );
ok(!12.34->is_int );
ok( 12.34->is_real_number );
ok(!'12.34.56'->is_real_number );
ok( '12.34'->is_real );
ok(!'abc'->is_real );
ok( 12.34->is_decimal );
ok(!'abc'->is_decimal );
ok( 12.34->is_dec );
ok(!'abc'->is_dec );
ok( 12.34->is_float );
ok(!'abc'->is_float );


is( '123'->reverse, '321' );

TODO: {
   local $TODO = q{ hex is weird };

   is( 255->hex, 'FF');
   is( 'FF'->dec, 255);
   is( 0xFF->dec, 255);

};
