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
void sub4(object objectParam1, int intParam2, int intParam3);
void sub3(int intParam1);
int sub2(object objectParam1, int intParam2);
int sub1();

void sub4(object objectParam1, int intParam2, int intParam3) {
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

void sub3(int intParam1) {
	sub4(OBJECT_SELF, intGLOB_1, intParam1);
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
	object oPC = GetFirstPC();
	if (((GetEnteringObject() == oPC) && (sub1() == 0))) {
		object oKor36_tukata1 = GetObjectByTag("kor36_tukata1", 0);
		object oKor36_tukata2 = GetObjectByTag("kor36_tukata2", 0);
		object oKor36_tukata3 = GetObjectByTag("kor36_tukata3", 0);
		object oKor36_iriaz = GetObjectByTag("kor36_iriaz", 0);
		if (GetIsObjectValid(oKor36_tukata1)) {
			ChangeToStandardFaction(oKor36_tukata1, 4);
		}
		if (GetIsObjectValid(oKor36_tukata2)) {
			ChangeToStandardFaction(oKor36_tukata2, 4);
		}
		if (GetIsObjectValid(oKor36_tukata3)) {
			ChangeToStandardFaction(oKor36_tukata3, 4);
		}
		if (GetIsObjectValid(oKor36_iriaz)) {
			ChangeToStandardFaction(oKor36_iriaz, 2);
		}
		unknown unknown1 = EventUserDefined(136);
		SignalEvent(oKor36_tukata1, unknown1);
		SignalEvent(oKor36_tukata2, unknown1);
		SignalEvent(oKor36_tukata3, unknown1);
		sub3(1);
	}
}

