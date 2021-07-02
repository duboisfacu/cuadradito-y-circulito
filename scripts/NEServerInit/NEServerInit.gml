/// @description NEServerInit( port, maxclients, server obj, TestingMoreClientsWithOneIP, net_type )
/// @param  port
/// @param  maxclients
/// @param  server obj
/// @param  TestingMoreClientsWithOneIP
/// @param  net_type 
NEServer = network_create_server(argument4, argument0, argument1);
Buffer = buffer_create(1024, buffer_grow, 1);
globalvar server_obj; server_obj = argument2;
TestingMoreClientsWithOneIP = argument3;
SocketIp = ds_map_create();
SocketList = ds_list_create();
global.WRITING = false;
global.MULTIPLAYER = false;
global.HOSTING = false;

if( NEServer<0 ){
    show_message( "Can't bind port "+string( argument0 ) );
    instance_destroy();
}

global.MULTIPLAYER = true;
global.HOSTING = true;
