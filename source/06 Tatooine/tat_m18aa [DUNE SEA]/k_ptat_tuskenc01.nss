void main() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(0);
	object object5 = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	object oNearestTat18_wp_tuskenc = GetNearestObjectByTag("tat18_wp_tuskenc", OBJECT_SELF, 1);
	object object11 = GetNearestObjectByTag("tat18_wp_tuskenc", OBJECT_SELF, 2);
	object object13 = GetNearestObjectByTag("tat18_wp_tuskenc", OBJECT_SELF, 3);
	object oNearestTat18_wp_tuskatk = GetNearestObjectByTag("tat18_wp_tuskatk", OBJECT_SELF, 1);
	location location1 = GetLocation(oNearestTat18_wp_tuskenc);
	location location3 = GetLocation(object11);
	location location5 = GetLocation(object13);
	int int1 = ((GetLevelByPosition(1, oPC) + GetLevelByPosition(2, oPC)) + GetLevelByPosition(3, oPC));
	switch (GetGlobalNumber("tat_DuneSeaEnc")) {
		case 1:
			SetDialogPlaceableCamera(10);
			break;
		case 2:
			SetDialogPlaceableCamera(12);
			break;
		case 3:
			SetDialogPlaceableCamera(14);
			break;
		case 4:
			SetDialogPlaceableCamera(16);
			break;
		case 5:
			SetDialogPlaceableCamera(18);
			break;
	}
	ActionPauseConversation();
	DelayCommand(2.0, ActionResumeConversation());
	if ((int1 > 11)) {
		object oTat18_tusken07 = CreateObject(1, "tat18_tusken07", location1, 0);
		object object19 = CreateObject(1, "tat18_tusken07", location3, 0);
		object oTat18_tusken08 = CreateObject(1, "tat18_tusken08", location5, 0);
	}
	else {
		object oTat18_tusken05 = CreateObject(1, "tat18_tusken05", location1, 0);
		object object25 = CreateObject(1, "tat18_tusken05", location3, 0);
		object oTat18_tusken06 = CreateObject(1, "tat18_tusken06", location5, 0);
	}
	AssignCommand(oNPC, JumpToObject(oNearestTat18_wp_tuskatk, 1));
	AssignCommand(object5, JumpToObject(oNearestTat18_wp_tuskatk, 1));
	AssignCommand(object7, JumpToObject(oNearestTat18_wp_tuskatk, 1));
}

