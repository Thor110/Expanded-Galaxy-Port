// Globals
	int intGLOB_10 = 9;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	string stringGLOB_1 = "end_trask";
	int intGLOB_172 = 28;
// Prototypes
object sub6();
void sub5();
void sub4(int intParam1);
void sub3(object objectParam1, int intParam2, int intParam3);
int sub2(object objectParam1, int intParam2);
int sub1();

object sub6() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void sub5() {
	object object1 = sub6();
	if ((GetPartyMemberByIndex(0) == object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	NoClicksFor(0.5);
	DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
}

void sub4(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

void sub3(object objectParam1, int intParam2, int intParam3) {
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
	int int1;
	if ((sub2(OBJECT_SELF, intGLOB_10) == 0)) {
		int1 = 1;
		sub3(OBJECT_SELF, intGLOB_10, 1);
	}
	return int1;
}

void main() {
	object oEntering = GetEnteringObject();
	if (sub1()) {
		SetXP(GetFirstPC(), 1000);
		sub4(intGLOB_172);
		sub5();
	}
}

