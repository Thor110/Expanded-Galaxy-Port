void main() {
	object oKas25aa_exit = GetWaypointByTag("kas25aa_exit");
	ActionForceMoveToObject(oKas25aa_exit, 1, 1.0, 30.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

