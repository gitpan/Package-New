# -*- perl -*-

use Test::More tests => 4;

BEGIN { use_ok( 'Package::New::Dump' ); }

my $object = Package::New::Dump->new(one=>{two=>{three=>{four=>{}}}});
isa_ok($object, 'Package::New::Dump');
isa_ok($object, 'Package::New');

can_ok($object, qw{new initialize dump});

diag("Dump Level 1");
diag($object->dump(1));
diag("Dump Level default");
diag($object->dump);
diag("Dump Level 2");
diag($object->dump(2));
diag("Dump Level 3");
diag($object->dump(3));
diag("Dump Level 4");
diag($object->dump(4));
diag("Dump Level 0");
diag($object->dump(0));
