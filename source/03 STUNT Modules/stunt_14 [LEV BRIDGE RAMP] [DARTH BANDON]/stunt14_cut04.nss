void main() {
	object oStunt14_bandon = GetObjectByTag("stunt14_bandon", 0);
	object oStunt14_bandon2 = GetObjectByTag("stunt14_bandon2", 0);
	object oStunt14_droid_01 = GetObjectByTag("stunt14_droid_01", 0);
	object oStunt14_droid_02 = GetObjectByTag("stunt14_droid_02", 0);
	object oStunt14_wp_03 = GetWaypointByTag("stunt14_wp_03");
	AssignCommand(oStunt14_bandon, ClearAllActions());
	AssignCommand(oStunt14_droid_01, ClearAllActions());
	AssignCommand(oStunt14_droid_02, ClearAllActions());
	AssignCommand(oStunt14_bandon2, ActionMoveToObject(oStunt14_wp_03, 0, 1.0));
	AssignCommand(oStunt14_droid_01, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	AssignCommand(oStunt14_droid_02, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
}

