/// @description NEClientReadPacket( buffer )
/// @param  buffer 
buffer_seek(argument0, buffer_seek_start, 0);
i = buffer_read(argument0, buffer_u8);

if( script_exists( PACKETS[ i ] ) ) script_execute( PACKETS[ i ], argument0 );
