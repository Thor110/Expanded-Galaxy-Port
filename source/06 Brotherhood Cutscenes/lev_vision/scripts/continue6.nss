void main() {
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	AssignCommand(oMr_invis, ActionStartConversation(GetFirstPC(), "opening7", 0, 0, 0, "", "", "", "", "", "", 0));
}
