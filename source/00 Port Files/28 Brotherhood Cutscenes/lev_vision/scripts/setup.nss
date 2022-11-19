void main() {
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	object oJedi1 = GetObjectByTag("jedi1", 0);
	object oJedi2 = GetObjectByTag("jedi2", 0);
	object oJedi3 = GetObjectByTag("jedi3", 0);
	object oRepublic_cap = GetObjectByTag("republic_cap", 0);
	AssignCommand(oRevan_bastila, ActionDoCommand(DestroyObject(oRevan_bastila, 0.0, 0, 0.0)));
	AssignCommand(oJedi1, ActionDoCommand(DestroyObject(oJedi1, 0.0, 0, 0.0)));
	AssignCommand(oJedi2, ActionDoCommand(DestroyObject(oJedi2, 0.0, 0, 0.0)));
	AssignCommand(oJedi3, ActionDoCommand(DestroyObject(oJedi3, 0.0, 0, 0.0)));
	AssignCommand(oRepublic_cap, ActionDoCommand(DestroyObject(oRepublic_cap, 0.0, 0, 0.0)));
	AssignCommand(oSw_door_sith002, ActionCloseDoor(oSw_door_sith002));
	AssignCommand(oSw_door_sith002, SetLocked(oSw_door_sith002, 1));
}

