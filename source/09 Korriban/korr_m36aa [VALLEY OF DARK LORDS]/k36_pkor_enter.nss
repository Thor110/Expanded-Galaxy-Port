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
void sub3(int intParam1, string stringParam2, location locationParam3);
void sub2(object objectParam1, int intParam2, int intParam3);
int sub1(object objectParam1, int intParam2);

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
	if ((GetEnteringObject() == oPC)) {
		if ((GetGlobalNumber("KOR_ROGUE_DROID") >= 3)) {
			object oKor36_sithassass = GetObjectByTag("kor36_sithassass", 0);
			DestroyObject(oKor36_sithassass, 0.0, 1, 0.0);
		}
		if (((GetGlobalNumber("KOR_LASHOWE_PLOT") == 2) && (!sub1(OBJECT_SELF, intGLOB_1)))) {
			sub2(OBJECT_SELF, intGLOB_1, 1);
			object oK36_way_lashowe = GetObjectByTag("k36_way_lashowe", 0);
			SetMapPinEnabled(oK36_way_lashowe, 1);
			location location1 = GetLocation(oK36_way_lashowe);
			sub3(1, "kor36_lashowe", location1);
		}
		if (((((GetGlobalNumber("KOR_FINAL_TEST") > 3) && (!GetGlobalBoolean("KOR_ADD_PARTY"))) && (!GetGlobalBoolean("KOR_END_HOSTILE"))) && (!sub1(OBJECT_SELF, intGLOB_2)))) {
			sub2(OBJECT_SELF, intGLOB_2, 1);
			SetAreaUnescapable(1);
			object oKor36_kor37 = GetObjectByTag("kor36_kor37", 0);
			AssignCommand(oKor36_kor37, ActionCloseDoor(oKor36_kor37));
			SetLocked(oKor36_kor37, 1);
			object oKor36_kor38b = GetObjectByTag("kor36_kor38b", 0);
			AssignCommand(oKor36_kor38b, ActionCloseDoor(oKor36_kor38b));
			SetLocked(oKor36_kor38b, 1);
		}
		if ((GetGlobalBoolean("KOR_END_HOSTILE") && GetGlobalBoolean("KOR_ADD_PARTY"))) {
			SetAreaUnescapable(0);
			object object12 = GetObjectByTag("kor36_kor37", 0);
			AssignCommand(object12, ActionCloseDoor(object12));
			SetLocked(object12, 1);
			object object14 = GetObjectByTag("kor36_kor38b", 0);
			AssignCommand(object14, ActionCloseDoor(object14));
			SetLocked(object14, 1);
		}
		if (GetGlobalBoolean("KOR_ADD_PARTY")) {
			SetAreaUnescapable(0);
		}
	}
}

