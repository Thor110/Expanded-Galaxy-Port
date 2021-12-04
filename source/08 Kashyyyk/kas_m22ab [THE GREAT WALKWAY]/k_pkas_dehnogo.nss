void main() {
	object oKas22ab_exit = GetWaypointByTag("kas22ab_exit");
	object oKas22_czguard_01 = GetObjectByTag("kas22_czguard_01", 0);
	object oKas22_czguard_02 = GetObjectByTag("kas22_czguard_02", 0);
	ClearAllActions();
	AssignCommand(oKas22_czguard_01, ClearAllActions());
	AssignCommand(oKas22_czguard_01, ActionMoveToObject(oKas22ab_exit, 1, 1.0));
	AssignCommand(oKas22_czguard_01, ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0)));
	AssignCommand(oKas22_czguard_01, SetCommandable(0, OBJECT_SELF));
	AssignCommand(oKas22_czguard_02, ClearAllActions());
	AssignCommand(oKas22_czguard_02, ActionMoveToObject(oKas22ab_exit, 1, 1.0));
	AssignCommand(oKas22_czguard_02, ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0)));
	AssignCommand(oKas22_czguard_02, SetCommandable(0, OBJECT_SELF));
	ActionMoveToObject(oKas22ab_exit, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

