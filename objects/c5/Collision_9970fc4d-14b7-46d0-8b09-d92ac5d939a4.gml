global.l5 = 1
global.pony_l5 = 1

ini_open ("lev.ini")
ini_write_real ("niveles","n5",global.l5)
ini_write_real ("pony","n5",global.pony_l5)
ini_close ();

action_another_room(rm_single_levelselector);
