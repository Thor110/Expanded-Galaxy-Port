void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oPC = GetFirstPC();
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object object5 = CreateItemOnObject("revan_saber", oPC, 1);
	AssignCommand(oPC, ActionEquipItem(object5, 4, 0));
	ActionResumeConversation();
}

