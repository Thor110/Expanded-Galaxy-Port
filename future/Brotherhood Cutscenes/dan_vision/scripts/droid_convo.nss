void main() {
	object oPC = GetFirstPC();
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	object oOld_droid = GetObjectByTag("old_droid", 0);
	AssignCommand(oMr_invis, ActionDoCommand(SetCommandable(1, oOld_droid)));
	AssignCommand(oMr_invis, ActionStartConversation(GetFirstPC(), "old_droid", 0, 0, 0, "", "", "", "", "", "", 0));
}

