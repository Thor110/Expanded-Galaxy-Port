// Globals
	int intGLOB_1 = 0;

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
void sub5();
void sub4(object objectParam1, int intParam2, int intParam3);
void sub3(int intParam1);
int sub2(object objectParam1, int intParam2);
int sub1();

void sub5() {
	object oTat17_helenaspwn = GetWaypointByTag("tat17_helenaspwn");
	location location1 = GetLocation(oTat17_helenaspwn);
	CreateObject(1, "helena", location1, 0);
}

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
	if (((intParam1 == 1) || (intParam1 == 0))) {
		sub4(OBJECT_SELF, intGLOB_1, intParam1);
	}
	return;
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
	object oHelena = GetObjectByTag("Helena", 0);
	if ((((GetGlobalNumber("K_KOTOR_MASTER") < 20) && (GetGlobalNumber("K_SWG_HELENA") == 2)) && (sub1() == 0))) {
		sub3(1);
		DelayCommand(1.0, sub5());
	}
	else {
		if (((GetGlobalNumber("K_KOTOR_MASTER") >= 20) && (GetIsObjectValid(oHelena) == 1))) {
			DestroyObject(oHelena, 0.0, 0, 0.0);
		}
	}
	object oSittingWalrusman = GetObjectByTag("SittingWalrusman", 0);
	object oSittingBith = GetObjectByTag("SittingBith", 0);
	AssignCommand(oSittingWalrusman, ActionPlayAnimation(204, 1.0, 0.0));
	AssignCommand(oSittingBith, ActionPlayAnimation(204, 1.0, 0.0));
}

