/// @description NESendToAll( socket )
/// @param  socket 
for(i=0;ii<ds_list_size(server_obj.SocketList);ii++){
    var result = ds_list_find_value(server_obj.SocketList,ii);
    if( argument0 != -1 ){
        if( argument0 != result ){
            network_send_packet( result , server_obj.Buffer , buffer_tell( server_obj.Buffer ) );
        }
    }else{
        network_send_packet( result , server_obj.Buffer , buffer_tell( server_obj.Buffer ) );
    }
}
