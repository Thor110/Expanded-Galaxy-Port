void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	object oJedi1_bridge = GetObjectByTag("jedi1_bridge", 0);
	object oJedi2_bridge = GetObjectByTag("jedi2_bridge", 0);
	object oRevan_bastila2 = GetObjectByTag("revan_bastila2", 0);
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	object oJedi3_bridge = GetObjectByTag("jedi3_bridge", 0);
	object oWp_bridge1 = GetWaypointByTag("wp_bridge1");
	object oWp_bridge2 = GetWaypointByTag("wp_bridge2");
	object oWp_bastilanew = GetWaypointByTag("wp_bastilanew");
	object oWp_bastilaold = GetWaypointByTag("wp_bastilaold");
	object oWp_jedi3bridge = GetWaypointByTag("wp_jedi3bridge");
	AssignCommand(oJedi2_bridge, JumpToObject(oWp_bridge1, 1));
	AssignCommand(oJedi1_bridge, JumpToObject(oWp_bridge2, 1));
	AssignCommand(oRevan_bastila2, JumpToObject(oWp_bastilanew, 1));
	AssignCommand(oRevan_bastila, JumpToObject(oWp_bastilaold, 1));
	AssignCommand(oJedi3_bridge, JumpToObject(oWp_jedi3bridge, 1));
	vector struct2 = Vector(290.58, 53.54, 9.1);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(290.58, 56.5, 9.1);
	location location3 = Location(struct4, 0.0);
	vector struct6 = Vector(290.58, 55.08, 9.1);
	location location5 = Location(struct6, 0.0);
	vector struct8 = Vector(288.43, 56.14, 9.1);
	location location7 = Location(struct8, 0.0);
	SetLightsaberPowered(oJedi1_bridge, 1, 1, 1);
	SetLightsaberPowered(oJedi2_bridge, 1, 1, 1);
	SetLightsaberPowered(oRevan_bastila2, 1, 1, 1);
	SetLightsaberPowered(oJedi3_bridge, 1, 1, 1);
	AssignCommand(oRevan_bastila2, ActionForceMoveToLocation(location5, 0, 30.0));
	AssignCommand(oJedi1_bridge, ActionForceMoveToLocation(location3, 0, 30.0));
	AssignCommand(oJedi2_bridge, ActionForceMoveToLocation(location1, 0, 30.0));
	DelayCommand(4.0, AssignCommand(oJedi3_bridge, ActionForceMoveToLocation(location7, 1, 30.0)));
	ActionResumeConversation();
}

