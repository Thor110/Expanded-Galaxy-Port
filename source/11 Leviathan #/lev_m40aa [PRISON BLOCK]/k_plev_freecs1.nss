void main() {
	object oLev40_wpequiproom = GetObjectByTag("lev40_wpequiproom", 0);
	object oLev40_wpequiprooma = GetObjectByTag("lev40_wpequiprooma", 0);
	object oLev40_wpequiproomb = GetObjectByTag("lev40_wpequiproomb", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oNearestLev_impdoor = GetNearestObjectByTag("lev_impdoor", OBJECT_SELF, 1);
	AssignCommand(oNearestLev_impdoor, ActionOpenDoor(oNearestLev_impdoor));
	AssignCommand(oBastila, ActionMoveToObject(oLev40_wpequiproom, 1, 2.0));
	DelayCommand(1.0, AssignCommand(oCarth, ActionMoveToObject(oLev40_wpequiprooma, 1, 2.0)));
	DelayCommand(2.0, AssignCommand(GetFirstPC(), ActionMoveToObject(oLev40_wpequiproomb, 1, 2.0)));
	SetGlobalFadeOut(5.0, 1.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

