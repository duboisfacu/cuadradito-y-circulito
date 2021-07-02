if file_exists ("lev.ini" )
{
ini_open ("lev.ini")
global.l1 = ini_read_real ("niveles","n1", 0)
global.l2 = ini_read_real ("niveles","n2", 0)
global.l3 = ini_read_real ("niveles","n3", 0)
global.l4 = ini_read_real ("niveles","n4", 0)
global.l5 = ini_read_real ("niveles","n5", 0)
global.l6 = ini_read_real ("niveles","n6", 0)
global.l7 = ini_read_real ("niveles","n7", 0)
global.l8 = ini_read_real ("niveles","n8", 0)
global.l9 = ini_read_real ("niveles","n9", 0)
global.l10= ini_read_real ("niveles","n10", 0)
global.l11= ini_read_real ("niveles","n11", 0)
global.l12= ini_read_real ("niveles","n12", 0)

global.pony_l1 = ini_read_real ("pony","n1", 0)
global.pony_l2 = ini_read_real ("pony","n2", 0)
global.pony_l3 = ini_read_real ("pony","n3", 0)
global.pony_l4 = ini_read_real ("pony","n4", 0)
global.pony_l5 = ini_read_real ("pony","n5", 0)
//global.pony_l6 = ini_read_real ("pony","n6", 0)
//global.pony_l7 = ini_read_real ("pony","n7", 0)
//global.pony_l8 = ini_read_real ("pony","n8", 0)
//global.pony_l9 = ini_read_real ("pony","n9", 0)
//global.pony_l10= ini_read_real ("pony","n10", 0)
//global.pony_l11= ini_read_real ("pony","n11", 0)
//global.pony_l12= ini_read_real ("pony","n12", 0)

ini_close ();
}

