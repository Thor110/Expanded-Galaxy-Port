void main() {
	object oDan15_cutobj01 = GetObjectByTag("dan15_cutobj01", 0);
	object oPC = GetFirstPC();
	if ((GetIsObjectValid(oDan15_cutobj01) == 1)) {
		if ((oPC == GetPartyMemberByIndex(0))) {
			AssignCommand(oDan15_cutobj01, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(2.0, 2.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			object oNPC = GetPartyMemberByIndex(1);
			object object8 = GetPartyMemberByIndex(2);
			AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oDan15_cutobj01, 1)));
			AssignCommand(oNPC, DelayCommand(1.5, JumpToObject(oPC, 1)));
			AssignCommand(object8, DelayCommand(1.5, JumpToObject(oPC, 1)));
			NoClicksFor(1.4);
			AssignCommand(oDan15_cutobj01, DelayCommand(1.2, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
		}
	}
}

