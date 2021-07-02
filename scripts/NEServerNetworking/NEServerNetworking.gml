/// @description NEServerNetworking()
var type_event = async_load[? "type"];
switch( type_event ) {
    case network_type_connect:
        var socket = ds_map_find_value( async_load , "socket" );
        var socketip_news = ds_map_find_value( async_load , "ip" );
        
        if( !TestingMoreClientsWithOneIP ){
            if(ds_map_exists(SocketIp, socketip_news)){         
                network_destroy( socket );
            }else{
                ds_map_add(SocketIp, socketip_news, socket);
                ds_list_add( SocketList , socket );
            }
        }else{
            ds_list_add( SocketList , socket );
            ds_map_add(SocketIp, socketip_news, socket);
        }
        
        PLAYERS++;
    break;
    case network_type_disconnect:
        var socket = ds_map_find_value( async_load , "socket" );
        var findsocket = ds_list_find_index( SocketList , socket );
        
        if ( findsocket >= 0 ) {
            ds_list_delete( SocketList , findsocket );
        }
        
        PLAYERS--;
    break;
    case network_type_data:
        var buffer = ds_map_find_value( async_load , "buffer" );
        var socket = ds_map_find_value( async_load , "id" );
        
        NEServerReadPacket( buffer , socket );
    break;
}
