void main() {
	ActionPauseConversation();
	ActionWait(4.0);
	object oSith_guy2 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy3 = GetObjectByTag("sith_guy3", 0);
	object oSith_guy_main = GetObjectByTag("sith_guy_main", 0);
	object oSith_guy_side1 = GetObjectByTag("sith_guy_side1", 0);
	object oSith_guy1 = GetObjectByTag("sith_guy1", 0);
	object object11 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy_side2 = GetObjectByTag("sith_guy_side2", 0);
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	object oSw_door_sith004 = GetObjectByTag("sw_door_sith004", 0);
	object oLev40_stddoor = GetObjectByTag("lev40_stddoor", 0);
	object oPC = GetFirstPC();
	vector struct2 = Vector(251.15, 55.13, 9.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(251.15, 53.28, 9.0);
	location location3 = Location(struct4, 0.0);
	vector struct6 = Vector(251.15, 54.83, 9.0);
	location location5 = Location(struct6, 0.0);
	vector struct8 = Vector(251.15, 57.45, 9.0);
	location location7 = Location(struct8, 0.0);
	vector struct10 = Vector(296.19, 55.09, 9.0);
	location location9 = Location(struct10, 0.0);
	AssignCommand(oSith_guy1, SetFacingPoint(GetPosition(GetObjectByTag("walker", 0))));
	DelayCommand(0.1, AssignCommand(oSw_door_sith002, ActionOpenDoor(oSw_door_sith002)));
	DelayCommand(0.1, AssignCommand(oSw_door_sith004, ActionOpenDoor(oSw_door_sith004)));
	DelayCommand(0.1, AssignCommand(oLev40_stddoor, ActionOpenDoor(oLev40_stddoor)));
	DelayCommand(0.1, AssignCommand(oSith_guy2, ActionForceMoveToLocation(location1, 1, 30.0)));
	DelayCommand(0.5, AssignCommand(oSith_guy3, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(1.1, AssignCommand(oSith_guy_main, ActionForceMoveToLocation(location5, 1, 30.0)));
	DelayCommand(1.5, AssignCommand(oSith_guy_side1, ActionForceMoveToLocation(location7, 1, 30.0)));
	DelayCommand(0.5, AssignCommand(oSith_guy1, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(1.1, AssignCommand(object11, ActionForceMoveToLocation(location5, 1, 30.0)));
	DelayCommand(1.5, AssignCommand(oSith_guy_side2, ActionForceMoveToLocation(location7, 1, 30.0)));
	DelayCommand(2.0, AssignCommand(oPC, ActionForceMoveToLocation(location9, 0, 30.0)));
	ActionResumeConversation();
}

