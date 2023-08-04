// Globals
	int intGLOB_4 = 3;
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
void sub4(object objectParam1, int intParam2, int intParam3);
object sub3();
void sub2(int intParam1);
int sub1(object objectParam1, int intParam2);

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

object sub3() {
	return GetObjectByTag("Carth", 0);
}

void sub2(int intParam1) {
	SetGlobalNumber("END_CARTH_DLG", intParam1);
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
	if (sub1(GetArea(OBJECT_SELF), intGLOB_4)) {
		object oEnd_door05 = GetObjectByTag("end_door05", 0);
		object oEnd_sith04 = GetObjectByTag("end_sith04", 0);
		if ((((GetIsOpen(oEnd_door05) == 0) && GetIsObjectValid(oEnd_sith04)) && (GetIsDead(oEnd_sith04) == 0))) {
			object oPC = GetFirstPC();
			CancelCombat(oPC);
			sub2(4);
			SignalEvent(sub3(), EventUserDefined(10));
		}
	}
	else {
		sub4(GetArea(OBJECT_SELF), intGLOB_4, 1);
	}
}

