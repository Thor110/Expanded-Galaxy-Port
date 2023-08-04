void main() {
	object oTat18_hunter_01 = GetObjectByTag("tat18_hunter_01", 0);
	object oTat18_wp_kraytmv = GetWaypointByTag("tat18_wp_kraytmv");
	if ((GetIsObjectValid(oTat18_hunter_01) == 1)) {
		AssignCommand(oTat18_hunter_01, ActionMoveToObject(oTat18_wp_kraytmv, 1, 1.0));
		AssignCommand(oTat18_hunter_01, ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0)));
	}
}

