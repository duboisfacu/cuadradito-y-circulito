index = keyboard_check(ord("C"));
if( index ){
    instance_create(0, 0, objClient);
    
    instance_destroy();
}

index = keyboard_check(ord("S"));
if( index ){
    instance_create(0, 0, objServer);
    
    instance_destroy();
}

