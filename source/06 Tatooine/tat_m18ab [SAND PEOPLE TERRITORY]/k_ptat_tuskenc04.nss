void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oNearestTat18_wp_tuskenc = GetNearestObjectByTag("tat18_wp_tuskenc", OBJECT_SELF, 1);
	object object9 = GetNearestObjectByTag("tat18_wp_tuskenc", OBJECT_SELF, 2);
	object object11 = GetNearestObjectByTag("tat18_wp_tuskenc", OBJECT_SELF, 3);
	object oNearestTat18_wp_tuskatk = GetNearestObjectByTag("tat18_wp_tuskatk", OBJECT_SELF, 1);
	location location1 = GetLocation(oNearestTat18_wp_tuskenc);
	location location3 = GetLocation(object9);
	location location5 = GetLocation(object11);
	switch (GetGlobalNumber("tat_DuneSeaEnc")) {
		case 1:
			SetDialogPlaceableCamera(14);
			break;
		case 2:
			SetDialogPlaceableCamera(16);
			break;
		case 3:
			SetDialogPlaceableCamera(18);
			break;
		case 4:
			SetDialogPlaceableCamera(20);
			break;
	}
	SetPartyLeader(0xFFFFFFFF);
	ActionPauseConversation();
	DelayCommand(2.0, ActionResumeConversation());
	CreateObject(1, "tat18_tusken05", location1, 0);
	CreateObject(1, "tat18_tusken05", location3, 0);
	CreateObject(1, "tat18_tusken06", location5, 0);
	AssignCommand(oNPC, JumpToObject(oNearestTat18_wp_tuskatk, 1));
	AssignCommand(object3, JumpToObject(oNearestTat18_wp_tuskatk, 1));
	AssignCommand(object5, JumpToObject(oNearestTat18_wp_tuskatk, 1));
}

