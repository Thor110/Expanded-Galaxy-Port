void main() {
	object oStunt14_bandon2 = GetObjectByTag("stunt14_bandon2", 0);
	object oStunt14_wp_02 = GetWaypointByTag("stunt14_wp_02");
	AssignCommand(oStunt14_bandon2, ClearAllActions());
	AssignCommand(oStunt14_bandon2, ActionMoveToObject(oStunt14_wp_02, 0, 1.0));
}

