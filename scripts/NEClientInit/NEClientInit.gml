/// @description NEClientInit( ip adress, port, net_type )
/// @param  ip adress
/// @param  port
/// @param  net_type 
NESocket = network_create_socket( argument2 );
NEConnection = network_connect(NESocket, argument0, argument1);
Buffer = buffer_create(1024, buffer_grow, 1);
global.WRITING = false;

if( NEConnection<0 ){
    show_message( "Can't connect to ip "+string( argument0 ) );
    instance_destroy();
}
