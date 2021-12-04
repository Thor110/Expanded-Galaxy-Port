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
void sub5(object objectParam1, int intParam2, int intParam3);
void sub4(int intParam1);
void sub3(int intParam1, string stringParam2, location locationParam3);
int sub2(object objectParam1, int intParam2);
int sub1();

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
	sub5(OBJECT_SELF, intGLOB_1, intParam1);
}

void sub3(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

int sub2(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub1() {
	return sub2(OBJECT_SELF, intGLOB_1);
}

void main() {
	object oNPC = GetPartyMemberByIndex(0);
	if (((((GetGlobalNumber("KOR_FINAL_TEST") == 4) || (GetGlobalNumber("KOR_FINAL_TEST") == 7)) && (!sub1())) && (GetEnteringObject() == oNPC))) {
		object oK36_way_endsith1 = GetObjectByTag("k36_way_endsith1", 0);
		object oK36_way_endsith2 = GetObjectByTag("k36_way_endsith2", 0);
		object oK36_way_endsith3 = GetObjectByTag("k36_way_endsith3", 0);
		location location1 = GetLocation(oK36_way_endsith1);
		location location3 = GetLocation(oK36_way_endsith2);
		location location5 = GetLocation(oK36_way_endsith3);
		DelayCommand(0.5, sub3(1, "kor36_endsith1", location1));
		DelayCommand(0.5, sub3(1, "kor36_endsith2", location3));
		DelayCommand(0.5, sub3(1, "kor36_endsith3", location5));
		DelayCommand(0.5, sub4(1));
		object oKor36_lashowe = GetObjectByTag("kor36_lashowe", 0);
		if (GetIsObjectValid(oKor36_lashowe)) {
			DestroyObject(oKor36_lashowe, 0.0, 1, 0.0);
		}
	}
}

