/// @description NESendPackage( all only server / socket )
/// @param  all only server / socket 
if( global.WRITING ) exit;
if( string( argument0 )=="all" ){
    if( argument1 != -1 ){
        NESendToAll( argument1 );
    }else NESendToAll( -1 );
}else{
    if( server_obj==id ){
        network_send_packet(argument0, Buffer, buffer_tell( Buffer ));
    }else
	{
        network_send_packet(argument0, Buffer, buffer_tell( Buffer ));
    }
}
