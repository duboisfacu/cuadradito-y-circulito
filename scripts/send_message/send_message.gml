/// @description send_message( socket )
/// @param  socket 

NEStartBufferWriting();
    NEAddToBuffer( buffer_u8, 1 );
    NEAddToBuffer( buffer_string, "Hello player! ur id "+string( PLAYERS ) );
NEEndBufferWriting();

NESendPackage( argument0, -1 );
