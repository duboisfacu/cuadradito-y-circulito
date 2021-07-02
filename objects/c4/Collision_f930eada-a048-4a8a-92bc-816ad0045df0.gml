global.l4 = 1
global.pony_l4 = 1

ini_open ("lev.ini")
ini_write_real ("niveles","n4",global.l4)
ini_write_real ("pony","n4",global.pony_l4)
ini_close ();

action_another_room(rm_single_levelselector);
