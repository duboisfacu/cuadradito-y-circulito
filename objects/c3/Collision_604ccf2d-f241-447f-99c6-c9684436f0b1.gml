global.l3 = 1
global.pony_l3 = 1

ini_open ("lev.ini")
ini_write_real ("niveles","n3",global.l3)
ini_write_real ("pony","n3",global.pony_l3)
ini_close ();

action_another_room(rm_single_levelselector);
