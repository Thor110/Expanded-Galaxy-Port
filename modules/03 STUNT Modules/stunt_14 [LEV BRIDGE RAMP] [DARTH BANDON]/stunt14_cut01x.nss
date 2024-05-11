void main() {
	object oStunt14_saul = GetObjectByTag("stunt14_saul", 0);
	object oStunt14_wp_01 = GetWaypointByTag("stunt14_wp_01");
	DelayCommand(2.8, AssignCommand(oStunt14_saul, ActionMoveToObject(oStunt14_wp_01, 0, 1.0)));
}
