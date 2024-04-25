void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	object oPC = GetFirstPC();
	object oGuard1 = GetObjectByTag("guard1", 0);
	object object5 = CreateItemOnObject("g_w_dblswrd001", oGuard1, 1);
	object oGuard2 = GetObjectByTag("guard2", 0);
	object object9 = CreateItemOnObject("g_w_dblswrd001", oGuard2, 1);
	object oGuard3 = GetObjectByTag("guard3", 0);
	object object13 = CreateItemOnObject("g_w_dblswrd001", oGuard3, 1);
	AssignCommand(oGuard1, ActionEquipItem(object5, 4, 0));
	AssignCommand(oGuard2, ActionEquipItem(object9, 4, 0));
	AssignCommand(oGuard3, ActionEquipItem(object13, 4, 0));
	ActionResumeConversation();
}

