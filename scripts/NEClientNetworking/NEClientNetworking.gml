/// @description NEClientNetworking()
var type_event = async_load[? "type"];
switch( type_event ) {
    case network_type_data:
        var buffer = ds_map_find_value( async_load , "buffer" );
        var socket = ds_map_find_value( async_load , "id" );
        
        NEClientReadPacket( buffer );
    break;
}
