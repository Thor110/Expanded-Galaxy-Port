void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oPC = GetFirstPC();
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object object5 = CreateItemOnObject("g_w_dblsbr005", oCpu_guy, 1);
	AssignCommand(oCpu_guy, ActionEquipItem(object5, 4, 0));
	ActionResumeConversation();
}

