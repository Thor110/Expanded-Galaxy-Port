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
void sub3(object objectParam1);
int sub2(object objectParam1);
void sub1(float floatParam1);

void sub3(object objectParam1) {
	if ((((GetBaseItemType(GetItemInSlot(4, objectParam1)) != 10) && (GetBaseItemType(GetItemInSlot(4, objectParam1)) != 9)) && (GetBaseItemType(GetItemInSlot(4, objectParam1)) != 8))) {
		CreateItemOnObject("sta_temp_saber2", objectParam1, 1);
		DelayCommand(0.2, AssignCommand(objectParam1, ClearAllActions()));
		DelayCommand(1.0, AssignCommand(objectParam1, ActionEquipItem(GetItemPossessedBy(objectParam1, "sta_temp_saber"), 4, 1)));
	}
}

int sub2(object objectParam1) {
	int int1 = 10;
	int int2 = 9;
	int int3 = 8;
	if (((((((GetBaseItemType(GetItemInSlot(5, objectParam1)) != int1) && (GetBaseItemType(GetItemInSlot(4, objectParam1)) != int1)) && (GetBaseItemType(GetItemInSlot(5, objectParam1)) != int3)) && (GetBaseItemType(GetItemInSlot(4, objectParam1)) != int3)) && (GetBaseItemType(GetItemInSlot(5, objectParam1)) != int2)) && (GetBaseItemType(GetItemInSlot(4, objectParam1)) != int2))) {
		return 0;
	}
	else {
		return 1;
	}
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oPC = GetFirstPC();
	object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
	object oSta_way_pcend = GetObjectByTag("sta_way_pcend", 0);
	object oSTA45A_WAY_45D = GetObjectByTag("STA45A_WAY_45D", 0);
	location location1 = GetLocation(oSTA45A_WAY_45D);
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oInvItem;
	sub1(6.0);
	AssignCommand(oPC, JumpToLocation(location1));
	SetLockHeadFollowInDialog(oPC, 1);
	oInvItem = GetFirstItemInInventory(oPC);
	if ((GetGlobalNumber("G_FinalChoice") == 1)) {
		if ((((GetBaseItemType(GetItemInSlot(5, oPC)) != 10) && (GetBaseItemType(GetItemInSlot(5, oPC)) != 9)) && (GetBaseItemType(GetItemInSlot(5, oPC)) != 8))) {
			AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(5, OBJECT_SELF), 0));
		}
		if ((((GetBaseItemType(GetItemInSlot(4, oPC)) != 10) && (GetBaseItemType(GetItemInSlot(4, oPC)) != 9)) && (GetBaseItemType(GetItemInSlot(4, oPC)) != 8))) {
			AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0));
		}
		while (((oInvItem != OBJECT_INVALID) && (sub2(oPC) == 0))) {
			if ((((GetBaseItemType(oInvItem) == 8) || (GetBaseItemType(oInvItem) == 9)) || (GetBaseItemType(oInvItem) == 10))) {
				AssignCommand(oPC, ActionEquipItem(oInvItem, 4, 1));
				DelayCommand(1.0, SetLightsaberPowered(oPC, 1, 0, 0));
			}
			oInvItem = GetNextItemInInventory(oPC);
		}
		DelayCommand(1.0, sub3(oPC));
	}
	SetLocked(oSta45a_sta45d, 0);
	AssignCommand(oSta45a_sta45d, ActionOpenDoor(OBJECT_SELF));
	DelayCommand(1.5, AssignCommand(oPC, ActionMoveToObject(oSta_way_pcend, 0, 1.0)));
	if ((!GetIsObjectValid(oSta_bastila))) {
		DelayCommand(3.3, SetDialogPlaceableCamera(30));
	}
	else {
		DelayCommand(3.3, SetDialogPlaceableCamera(31));
	}
	DelayCommand(7.8, AssignCommand(oSta45a_sta45d, ActionCloseDoor(OBJECT_SELF)));
}

