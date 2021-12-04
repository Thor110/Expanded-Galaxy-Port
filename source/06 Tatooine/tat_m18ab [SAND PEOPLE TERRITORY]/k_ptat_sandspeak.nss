void main() {
	object oPC = GetFirstPC();
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	object oTat18_sandspeak = GetObjectByTag("tat18_sandspeak", 0);
	AssignCommand(oTat18_sandspeak, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
}

