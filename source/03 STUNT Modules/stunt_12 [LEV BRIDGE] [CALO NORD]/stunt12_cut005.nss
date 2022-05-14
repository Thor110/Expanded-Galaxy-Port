void main() {
	object oStunt12_wp_05 = GetWaypointByTag("stunt12_wp_05");
	location location1 = GetLocation(oStunt12_wp_05);
	object oStunt12_malak = GetObjectByTag("stunt12_malak", 0);
	SetLockOrientationInDialog(oStunt12_malak, 0);
	CreateObject(1, "stunt12_calonord", location1, 0);
	object oStunt12_calonord = GetObjectByTag("stunt12_calonord", 0);
	object oStunt12_wp_06 = GetWaypointByTag("stunt12_wp_06");
	DelayCommand(0.90000004, AssignCommand(oStunt12_calonord, ActionMoveToObject(oStunt12_wp_06, 0, 1.0)));
}

