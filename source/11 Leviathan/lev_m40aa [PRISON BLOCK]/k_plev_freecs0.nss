void main() {
	object oLev40_wpequipdoor = GetObjectByTag("lev40_wpequipdoor", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oNearestLev_stddoor = GetNearestObjectByTag("lev_stddoor", OBJECT_SELF, 1);
	AssignCommand(oBastila, ActionMoveToObject(oLev40_wpequipdoor, 1, 2.0));
	DelayCommand(1.0, AssignCommand(oCarth, ActionMoveToObject(oLev40_wpequipdoor, 1, 2.0)));
	DelayCommand(2.0, AssignCommand(GetFirstPC(), ActionMoveToObject(oLev40_wpequipdoor, 1, 2.0)));
	DelayCommand(1.0, AssignCommand(oNearestLev_stddoor, ActionOpenDoor(oNearestLev_stddoor)));
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

