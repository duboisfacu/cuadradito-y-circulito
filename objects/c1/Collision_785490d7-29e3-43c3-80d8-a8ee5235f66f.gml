global.l1 = 1
global.pony_l1 = 1

ini_open ("lev.ini")
ini_write_real ("niveles","n1",global.l1)
ini_write_real ("pony","n1",global.pony_l1)
ini_close ();

action_another_room(rm_single_levelselector);
