void main() {
	object oExiting = GetExitingObject();
	object oKas25_wp_hurthome = GetWaypointByTag("kas25_wp_hurthome");
	if ((GetTag(oExiting) == "kas25_hurt_01")) {
		CancelCombat(oExiting);
		AssignCommand(oExiting, ClearAllActions());
		AssignCommand(oExiting, ActionMoveToObject(oKas25_wp_hurthome, 0, 1.0));
		AssignCommand(oExiting, ActionDoCommand(SetCommandable(1, OBJECT_SELF)));
		AssignCommand(oExiting, SetCommandable(0, OBJECT_SELF));
	}
}

