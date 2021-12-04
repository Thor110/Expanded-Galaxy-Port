void main() {
	object oNearestKas22aa_exit = GetNearestObjectByTag("kas22aa_exit", OBJECT_SELF, 1);
	ActionMoveToObject(oNearestKas22aa_exit, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

