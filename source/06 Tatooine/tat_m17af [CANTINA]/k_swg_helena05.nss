void main() {
	object oTat_exit = GetWaypointByTag("tat_exit");
	SetGlobalNumber("K_SWG_HELENA", 5);
	SetGlobalNumber("K_SWG_BASTILA", 99);
	ActionMoveToObject(oTat_exit, 0, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

