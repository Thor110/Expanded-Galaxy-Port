void main() {
	object oStunt12_soldier1 = GetObjectByTag("stunt12_soldier1", 0);
	object oStunt12_officer1 = GetObjectByTag("stunt12_officer1", 0);
	object oStunt12_wp_02 = GetWaypointByTag("stunt12_wp_02");
	object oStunt12_soldier_move = GetWaypointByTag("stunt12_soldier_move");
	AssignCommand(oStunt12_soldier1, ActionMoveToObject(oStunt12_soldier_move, 0, 1.0));
	DelayCommand(15.0, DestroyObject(oStunt12_soldier1, 0.0, 0, 0.0));
	AssignCommand(oStunt12_officer1, DelayCommand(0.5, ActionMoveToObject(oStunt12_wp_02, 0, 1.0)));
	object oStunt12_wp_03 = GetWaypointByTag("stunt12_wp_03");
	location location1 = GetLocation(oStunt12_wp_03);
	DelayCommand(6.8, AssignCommand(oStunt12_officer1, SetFacingPoint(GetPosition(GetNearestObjectByTag("InfoTerm", oStunt12_officer1, 1)))));
	DelayCommand(8.0, AssignCommand(oStunt12_officer1, PlayAnimation(15, 1.0, 999.0)));
	CreateObject(1, "stunt12_malak", location1, 0);
}

