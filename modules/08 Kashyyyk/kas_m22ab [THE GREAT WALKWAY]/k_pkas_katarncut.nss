void main() {
	object oPC = GetFirstPC();
	object oEntering = GetEnteringObject();
	object oKas22_cutspeak03 = GetObjectByTag("kas22_cutspeak03", 0);
	if ((GetIsPC(oEntering) == 1)) {
		CancelCombat(oPC);
		if ((oEntering == oPC)) {
			AssignCommand(oKas22_cutspeak03, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
		}
		else {
			SetPartyLeader(0xFFFFFFFF);
			AssignCommand(oKas22_cutspeak03, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
		}
	}
}

