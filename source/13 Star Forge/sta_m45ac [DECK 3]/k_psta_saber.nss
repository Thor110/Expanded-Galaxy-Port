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
		CreateItemOnObject("sta_temp_saber", objectParam1, 1);
		DelayCommand(0.2, AssignCommand(objectParam1, ClearAllActions()));
		DelayCommand(1.0, AssignCommand(objectParam1, ActionEquipItem(GetItemPossessedBy(objectParam1, "sta_temp_saber"), 4, 1)));
	}
}

int sub2(object objectParam1) {
	int int1 = 10;
	int int2 = 9;
	int int3 = 8;
	if ((((GetBaseItemType(GetItemInSlot(4, objectParam1)) != int1) && (GetBaseItemType(GetItemInSlot(4, objectParam1)) != int3)) && (GetBaseItemType(GetItemInSlot(4, objectParam1)) != int2))) {
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
	object oInvItem = GetFirstItemInInventory(oPC);
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	sub1(2.0);
	AssignCommand(oSta_bastila, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 1));
	if (GetIsObjectValid(GetItemInSlot(5, oPC))) {
		if ((((GetBaseItemType(GetItemInSlot(5, oPC)) != 10) && (GetBaseItemType(GetItemInSlot(5, oPC)) != 9)) && (GetBaseItemType(GetItemInSlot(5, oPC)) != 8))) {
			AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(5, OBJECT_SELF), 1));
		}
	}
	if (GetIsObjectValid(GetItemInSlot(4, oPC))) {
		if ((((GetBaseItemType(GetItemInSlot(4, oPC)) != 10) && (GetBaseItemType(GetItemInSlot(4, oPC)) != 9)) && (GetBaseItemType(GetItemInSlot(4, oPC)) != 8))) {
			AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 1));
		}
	}
	while (((oInvItem != OBJECT_INVALID) && (sub2(oPC) == 0))) {
		if ((((GetBaseItemType(oInvItem) == 8) || (GetBaseItemType(oInvItem) == 9)) || (GetBaseItemType(oInvItem) == 10))) {
			AssignCommand(oPC, ActionEquipItem(oInvItem, 4, 1));
		}
		oInvItem = GetNextItemInInventory(oPC);
	}
	DelayCommand(1.0, sub3(oPC));
	DelayCommand(1.1, SetLightsaberPowered(oPC, 0, 0, 0));
}

