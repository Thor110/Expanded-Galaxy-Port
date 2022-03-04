void main() {
	if ((((GetIsPC(GetEnteringObject()) == 1) && (GetIsInCombat(GetEnteringObject()) == 0)) && (!GetIsObjectValid(GetObjectByTag("unk41_rakguide", 0))))) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetPartyLeader((-1));
		NoClicksFor(0.7);
		DelayCommand(0.5, AssignCommand(GetObjectByTag("invis3", 0), ActionStartConversation(GetFirstPC(), "unk41_ambush", 0, 0, 1, "", "", "", "", "", "")));
		DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	}
}

