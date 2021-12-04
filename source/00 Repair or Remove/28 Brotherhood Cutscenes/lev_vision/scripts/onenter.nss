void main() {
	object oMr_starter = GetObjectByTag("mr_starter", 0);
	object oArea = GetArea(OBJECT_SELF);
	object oPC = GetFirstPC();
	AssignCommand(oMr_starter, ActionStartConversation(GetFirstPC(), "opening", 0, 0, 0, "", "", "", "", "", "", 0));
}

