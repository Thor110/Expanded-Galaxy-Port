void main() {
	object oTat17ag_exit = GetWaypointByTag("tat17ag_exit");
	ClearAllActions();
	ActionMoveToObject(oTat17ag_exit, 0, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

