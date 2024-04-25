void main() {
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	AssignCommand(oMr_invis, ActionStartConversation(GetFirstPC(), "bla", 0, 0, 0, "", "", "", "", "", "", 0));
}

