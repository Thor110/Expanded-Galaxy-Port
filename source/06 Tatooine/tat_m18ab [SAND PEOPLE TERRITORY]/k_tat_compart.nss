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
void sub3();
void sub2(int intParam1);
void sub1(object objectParam1, int intParam2, int intParam3);

void sub3() {
	object oAreaObject = GetFirstObjectInArea(GetArea(OBJECT_SELF), 1);
	object oVornsBike = GetObjectByTag("VornsBike", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object object8 = GetPartyMemberByIndex(1);
	object object10 = GetPartyMemberByIndex(2);
	while ((oAreaObject != OBJECT_INVALID)) {
		if (((((((oAreaObject != oNPC) && (oAreaObject != object8)) && (oAreaObject != object10)) && (GetTag(oAreaObject) != "vornsdroid")) && (GetTag(oAreaObject) != "Vorn")) && (GetTag(oAreaObject) != "vornsdroid2"))) {
			DestroyObject(oAreaObject, 0.0, 1, 0.0);
		}
		oAreaObject = GetNextObjectInArea(GetArea(OBJECT_SELF), 1);
	}
}

void sub2(int intParam1) {
	object object1 = GetItemPossessedBy(GetFirstPC(), "K_REPAIR_PART");
	if (GetIsObjectValid(object1)) {
		int int2 = GetItemStackSize(object1);
		if ((intParam1 < int2)) {
			intParam1 = (int2 - intParam1);
			SetItemStackSize(object1, intParam1);
		}
		else {
			if (((intParam1 > int2) || (intParam1 == int2))) {
				DestroyObject(object1, 0.0, 0, 0.0);
			}
		}
	}
}

void sub1(object objectParam1, int intParam2, int intParam3) {
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

void main() {
	ClearAllActions();
	sub1(OBJECT_SELF, intGLOB_11, 1);
	sub2(1);
	SetGlobalBoolean("Tat_VornDroid_Mess", 1);
	sub3();
}

