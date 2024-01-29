void main() {
	object oStunt14_bandon = GetObjectByTag("stunt14_bandon", 0);
	object oStunt14_droid_01 = GetObjectByTag("stunt14_droid_01", 0);
	object oStunt14_droid_02 = GetObjectByTag("stunt14_droid_02", 0);
	object oStunt14_wp_02 = GetWaypointByTag("stunt14_wp_02");
	location location1 = GetLocation(oStunt14_wp_02);
	CreateObject(1, "stunt14_bandon2", location1, 0);
	AssignCommand(oStunt14_bandon, ActionAttack(oStunt14_droid_01, 0));
	AssignCommand(oStunt14_droid_02, DelayCommand(1.0, ActionAttack(oStunt14_bandon, 0)));
}

