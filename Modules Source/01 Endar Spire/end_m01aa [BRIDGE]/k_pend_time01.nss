// Globals
	int intGLOB_3 = 2;
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
	int intGLOB_151 = 2;
// Prototypes
void sub5(object objectParam1, int intParam2, int intParam3);
void sub4(int intParam1);
int sub3(object objectParam1, int intParam2);
object sub2();
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
	sub5(sub2(), intGLOB_3, intParam1);
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

object sub2() {
	return GetObjectByTag(stringGLOB_1, 0);
}

int sub1() {
	return sub3(sub2(), intGLOB_3);
}

void main() {
  //SetGlobalNumber("End_TraskTalk",3);
	object object1 = OBJECT_SELF;
	if ((sub1() == 0)) {
		sub4(1);
		DelayCommand(20.0, SignalEvent(object1, EventUserDefined(100)));
	}
}

