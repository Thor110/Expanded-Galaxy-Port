void main() {
	object oPC = GetFirstPC();
	object object3 = GetLastUsedBy();
	object oKas25_ritualtalk = GetObjectByTag("kas25_ritualtalk", 0);
	AssignCommand(oKas25_ritualtalk, ActionStartConversation(object3, "kas25_ritualvine", 0, 0, 0, "", "", "", "", "", ""));
}

