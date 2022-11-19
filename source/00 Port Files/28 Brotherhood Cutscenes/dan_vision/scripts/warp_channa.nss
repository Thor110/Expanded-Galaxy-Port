void main() {
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oPC = GetFirstPC();
	object oWp_malak = GetWaypointByTag("wp_malak");
	object oWp_channa = GetWaypointByTag("wp_channa");
	object oWp_revan = GetWaypointByTag("wp_revan");
	DelayCommand(1.0, AssignCommand(oVision_channa, JumpToObject(oWp_channa, 1)));
	vector struct2 = Vector(147.51, 91.66, 4.42);
	location location1 = Location(struct2, 0.0);
	object oSuperdoor = GetObjectByTag("Superdoor", 0);
	AssignCommand(oVision_channa, ActionForceMoveToLocation(location1, 0, 30.0));
	DelayCommand(2.0, AssignCommand(oSuperdoor, ActionOpenDoor(oSuperdoor)));
}

