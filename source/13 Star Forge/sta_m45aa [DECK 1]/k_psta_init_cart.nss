// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub4();
void sub3(int intParam1, string stringParam2, location locationParam3);
void sub2(object objectParam1, int intParam2, int intParam3);
int sub1(object objectParam1, int intParam2);

void sub4() {
	object oCarth_head = GetObjectByTag("carth_head", 0);
	object oCarth_chest = GetObjectByTag("carth_chest", 0);
	object oCarth_left = GetObjectByTag("carth_left", 0);
	object oCarth_right = GetObjectByTag("carth_right", 0);
	object oInvItem;
	if (GetIsObjectValid(GetItemInSlot(0, GetObjectByTag("Carth", 0)))) {
		GiveItem(GetItemInSlot(0, GetObjectByTag("Carth", 0)), oCarth_head);
		oInvItem = GetFirstItemInInventory(oCarth_head);
		GiveItem(oInvItem, GetObjectByTag("sta_carth", 0));
		DelayCommand(0.1, AssignCommand(GetObjectByTag("sta_carth", 0), ActionEquipItem(oInvItem, 0, 1)));
	}
	if (GetIsObjectValid(GetItemInSlot(1, GetObjectByTag("Carth", 0)))) {
		GiveItem(GetItemInSlot(1, GetObjectByTag("Carth", 0)), oCarth_chest);
		oInvItem = GetFirstItemInInventory(oCarth_chest);
		GiveItem(oInvItem, GetObjectByTag("sta_carth", 0));
		DelayCommand(0.1, AssignCommand(GetObjectByTag("sta_carth", 0), ActionEquipItem(oInvItem, 1, 1)));
	}
}

void sub3(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub2(object objectParam1, int intParam2, int intParam3) {
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

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oPC = GetFirstPC();
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object oSta_invis_bastila = GetObjectByTag("sta_invis_bastila", 0);
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	location location1 = GetLocation(GetObjectByTag("sta_carth_copy", 0));
	if ((((GetEnteringObject() == oPC) && (sub1(OBJECT_SELF, intGLOB_1) == 0)) && GetGlobalBoolean("STA_MALAK_DEAD"))) {
		sub2(OBJECT_SELF, intGLOB_1, 1);
		if ((GetGlobalBoolean("STA_MALAK_DEAD") && GetGlobalBoolean("K_PSTA_BASTSAVE"))) {
			object oSta_way_bastend = GetObjectByTag("sta_way_bastend", 0);
			location location3 = GetLocation(oSta_way_bastend);
			sub3(1, "sta_bastila", location3);
		}
		if ((GetGlobalNumber("G_FinalChoice") == 2)) {
			SpawnAvailableNPC(2, location1);
			DelayCommand(0.5, sub4());
			DelayCommand(5.0, DestroyObject(GetObjectByTag("Carth", 0), 0.0, 0, 0.0));
		}
		object oSta_way_carth = GetObjectByTag("sta_way_carth", 0);
		location location5 = GetLocation(oSta_way_carth);
		sub3(1, "sta_carth", location5);
	}
	AssignCommand(oSta_invis_bastila, ActionStartConversation(OBJECT_SELF, "", 0, 0, 0, "", "", "", "", "", ""));
}

