void main() {
	ActionPauseConversation();
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	AssignCommand(oMr_invis, ActionWait(5.0));
	object oPC = GetFirstPC();
	object object5 = CreateItemOnObject("g_w_lghtsbr01", oPC, 1);
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object object9 = CreateItemOnObject("g_w_lghtsbr01", oVision_malak, 1);
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object object13 = CreateItemOnObject("g_w_dblsbr005", oVision_channa, 1);
	AssignCommand(oPC, ActionEquipItem(object5, 4, 0));
	AssignCommand(oPC, ActionPlayAnimation(19, 1.0, 30.0));
	AssignCommand(oVision_malak, ActionEquipItem(object9, 4, 0));
	AssignCommand(oVision_channa, ActionEquipItem(object13, 4, 0));
	ActionResumeConversation();
}

