/// @description NEServerReadPacket( buffer , socket )
/// @param  buffer 
/// @param  socket 
buffer_seek(argument0, buffer_seek_start, 0);
pcktID = buffer_read(argument0, buffer_u8);

if( script_exists( PACKETS[ pcktID ] ) ){
    script_execute( PACKETS[ pcktID ], argument1 );
}else{
    show_message( "Script doesn't exist's!" );
}
