// Globals
	int intGLOB_1 = 0;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
// Prototypes
void sub8(object objectParam1);
void sub7();
void sub6(object objectParam1);
void sub5(object objectParam1, int intParam2, int intParam3);
void sub4(int intParam1);
int sub3(object objectParam1, int intParam2);
int sub2();
int sub1();

void sub8(object objectParam1) {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oInvItem = GetFirstItemInInventory(objectParam1);
	oInvItem = GetFirstItemInInventory(objectParam1);
	while (((GetIsObjectValid(oInvItem) == 1) && (int1 == 0))) {
		if (((((GetBaseItemType(oInvItem) == 85) && (GetItemInSlot(1, oNPC) != oInvItem)) && (GetItemInSlot(1, object3) != oInvItem)) && (GetItemInSlot(1, object5) != oInvItem))) {
			AssignCommand(objectParam1, ActionEquipItem(oInvItem, 1, 1));
			int1 = 1;
		}
		oInvItem = GetNextItemInInventory(objectParam1);
	}
	if ((int1 == 0)) {
		oInvItem = CreateItemOnObject("G_A_CLOTHES01", objectParam1, 1);
		AssignCommand(objectParam1, ActionEquipItem(oInvItem, 1, 1));
	}
}

void sub7() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(0);
	object object5 = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	object oBodyItem = GetItemInSlot(1, oNPC);
	if ((GetTag(oBodyItem) == "tat17_sandperdis")) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionUnequipItem(oBodyItem, 0));
		AssignCommand(oNPC, ActionDoCommand(SetItemNonEquippable(oBodyItem, 1)));
		sub8(oNPC);
	}
	oBodyItem = GetItemInSlot(1, object5);
	if ((GetTag(oBodyItem) == "tat17_sandperdis")) {
		AssignCommand(object5, ClearAllActions());
		AssignCommand(object5, ActionUnequipItem(oBodyItem, 0));
		AssignCommand(object5, ActionDoCommand(SetItemNonEquippable(oBodyItem, 1)));
		sub8(object5);
	}
	oBodyItem = GetItemInSlot(1, object7);
	if ((GetTag(oBodyItem) == "tat17_sandperdis")) {
		AssignCommand(object7, ClearAllActions());
		AssignCommand(object7, ActionUnequipItem(oBodyItem, 0));
		AssignCommand(object7, ActionDoCommand(SetItemNonEquippable(oBodyItem, 1)));
		sub8(object7);
	}
	ActionWait(1.0);
	object oInvItem = GetFirstItemInInventory(oPC);
	while ((GetIsObjectValid(oInvItem) == 1)) {
		if ((GetTag(oInvItem) == "tat17_sandperdis")) {
			SetItemNonEquippable(oInvItem, 1);
		}
		oInvItem = GetNextItemInInventory(oPC);
	}
}

void sub6(object objectParam1) {
	object oTat17_griffspwn2 = GetWaypointByTag("tat17_griffspwn2");
	object oTat17_missionspn = GetWaypointByTag("tat17_missionspn");
	location location1 = GetLocation(oTat17_griffspwn2);
	location location3 = GetLocation(oTat17_missionspn);
	object oTat17_griff_02 = CreateObject(1, "tat17_griff_02", location1, 0);
	if ((IsNPCPartyMember(6) == 0)) {
		CreateObject(1, "tat17_mission", location3, 0);
	}
	NoClicksFor(0.7);
	AssignCommand(oTat17_griff_02, DelayCommand(0.5, ActionStartConversation(objectParam1, "", 0, 0, 1, "", "", "", "", "", "", 0)));
}

void sub5(object objectParam1, int intParam2, int intParam3) {
	int nLevel = GetHitDice(GetFirstPC());
	if ((intParam3 == 1)) {
		if (((((intParam2 == intGLOB_12) || (intParam2 == intGLOB_17)) || (intParam2 == intGLOB_18)) || (intParam2 == intGLOB_19))) {
			GiveXPToCreature(GetFirstPC(), (nLevel * 15));
		}
		else {
			if ((((intParam2 == intGLOB_13) || (intParam2 == intGLOB_20)) || (intParam2 == intGLOB_16))) {
				GiveXPToCreature(GetFirstPC(), (nLevel * 20));
			}
			else {
				if (((intParam2 == intGLOB_14) || (intParam2 == intGLOB_15))) {
					GiveXPToCreature(GetFirstPC(), (nLevel * 10));
				}
			}
		}
	}
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void sub4(int intParam1) {
	if (((intParam1 == 1) || (intParam1 == 0))) {
		sub5(OBJECT_SELF, intGLOB_1, intParam1);
	}
	return;
}

int sub3(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub2() {
	return sub3(OBJECT_SELF, intGLOB_1);
}

int sub1() {
	return GetGlobalBoolean("tat_GriffPort");
}

void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	if (((sub1() == 1) && (sub2() == 0))) {
		sub4(1);
		DelayCommand(1.0, sub6(oEntering));
	}
	if ((IsObjectPartyMember(oEntering) == 1)) {
		if ((GetGlobalBoolean("tat_TuskenSuit") == 1)) {
			AdjustReputation(oPC, oTat18_tuskanfac, (-50));
			SetGlobalBoolean("tat_TuskenSuit", 0);
		}
		DelayCommand(0.1, sub7());
	}
}

