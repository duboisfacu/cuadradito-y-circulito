// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -4; // obj_piso

global.__objectNames[0] = "obj_piso";

global.__objectDepths[267] = 0; // objMenu
global.__objectDepths[268] = 0; // objServer
global.__objectDepths[269] = 0; // objClient


global.__objectNames[267] = "objMenu";
global.__objectNames[268] = "objServer";
global.__objectNames[269] = "objClient";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for