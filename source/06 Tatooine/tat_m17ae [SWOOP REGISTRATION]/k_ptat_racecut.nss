void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oTat17_04celis_01 = GetObjectByTag("tat17_04celis_01", 0);
	if (((GetGlobalBoolean("tat_OfficialRace") == 1) && (GetIsPC(oEntering) == 1))) {
		NoClicksFor(0.7);
		AssignCommand(oTat17_04celis_01, DelayCommand(0.5, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0)));
	}
}

