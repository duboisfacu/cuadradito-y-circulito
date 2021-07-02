global.l2 = 1
global.pony_l2 = 1

ini_open ("lev.ini")
ini_write_real ("niveles","n2",global.l2)
ini_write_real ("pony","n2",global.pony_l2)
ini_close ();

action_another_room(rm_single_levelselector);
