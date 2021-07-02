/// @description message( "message" )
/// @param  "message" 
_message = string( buffer_read(argument0, buffer_string) );
show_message( _message );
