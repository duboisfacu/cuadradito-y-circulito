NEClientInit( "127.0.0.1", 26453, network_socket_tcp );
NEAddPacket(1, message);

NEStartBufferWriting();
    NEAddToBuffer( buffer_u8, 1 );
    NEAddToBuffer( buffer_string, get_string("NAME", "" ));
NEEndBufferWriting();
NESendPackage( NESocket, -1 );

