
void sub2() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	//sub3();
	if (GetIsObjectValid(oNPC)) {
		//sub4(oNPC, GetLocation(objectParam1));
	AssignCommand(oNPC, ClearAllActions());
		//AssignCommand(oNPC, SetFacing(GetFacing(objectParam1)));
	}
	if (GetIsObjectValid(object3)) {
		//sub4(object3, GetLocation(objectParam2));
	AssignCommand(object3, ClearAllActions());
		//DelayCommand(0.3, AssignCommand(object3, SetFacing(GetFacing(objectParam2))));
	}
	if (GetIsObjectValid(object5)) {
	AssignCommand(object5, ClearAllActions());
		//sub4(object5, GetLocation(objectParam3));
		//DelayCommand(0.3, AssignCommand(object5, SetFacing(GetFacing(objectParam3))));
	}
}

void main() {
	object object1 = OBJECT_SELF;
	object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
	object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
	ChangeToStandardFaction(OBJECT_SELF, 4);
	AssignCommand(oSta45a_sta45d, ActionCloseDoor(oSta45a_sta45d));
	SetLocked(oSta45a_sta45d, 1);
	object object6 = GetItemPossessedBy(OBJECT_SELF, "g_w_lghtsbr01");
	object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
	object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
	object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
	ChangeToStandardFaction(oSta45a_Sith01, 1);
	ChangeToStandardFaction(oSta45a_Sith02, 1);
	ChangeToStandardFaction(oSta45a_Sith03, 1);
	ChangeToStandardFaction(oSta45a_Sith04, 1);
	SetMinOneHP(oSta45a_Sith01, 0);
	SetMinOneHP(oSta45a_Sith02, 0);
	SetMinOneHP(oSta45a_Sith03, 0);
	SetMinOneHP(oSta45a_Sith04, 0);
	ActionEquipMostDamagingMelee(OBJECT_INVALID, 0);
	DelayCommand(0.5, ActionAttack(oSta45a_Sith01, 0));
	DelayCommand(0.5, AssignCommand(oSta45a_Sith01, ActionAttack(object1, 0)));
	sub2();
  //object oPC=GetFirstPC();
  //string cmMessage = IntToString(GetGlobalNumber("351NAR_G0T0_Ship"));
  //string combined = "Testing"/*+cmMessage*/;
  //SendMessageToPC(oPC, combined);
}

