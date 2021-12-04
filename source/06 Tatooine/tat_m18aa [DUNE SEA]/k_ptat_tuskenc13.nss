void main() {
	object oPC = GetFirstPC();
	object oEntering = GetEnteringObject();
	object oNearestTat18_encoun_spk = GetNearestObjectByTag("tat18_encoun_spk", OBJECT_SELF, 1);
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	object oTat18_tusken05 = GetObjectByTag("tat18_tusken05", 0);
	object object11 = GetObjectByTag("tat18_tusken05", 1);
	object oTat18_tusken06 = GetObjectByTag("tat18_tusken06", 0);
	SetGlobalNumber("tat_DuneSeaEnc", 4);
	if ((((((IsObjectPartyMember(oEntering) == 1) && (GetIsEnemy(oPC, oTat18_tuskanfac) == 1)) && ((GetDistanceToObject(oTat18_tusken05) > 40.0) || (GetIsObjectValid(oTat18_tusken05) == 0))) && ((GetDistanceToObject(object11) > 40.0) || (GetIsObjectValid(object11) == 0))) && ((GetDistanceToObject(oTat18_tusken06) > 40.0) || (GetIsObjectValid(oTat18_tusken06) == 0)))) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(oNearestTat18_encoun_spk, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

