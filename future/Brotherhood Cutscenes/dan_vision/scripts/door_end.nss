void main() {
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	object oArea = GetArea(OBJECT_SELF);
	object oPC = GetFirstPC();
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.5, AssignCommand(oMr_invis, ActionStartConversation(GetFirstPC(), "door_end", 0, 0, 0, "", "", "", "", "", "", 0)));
}

