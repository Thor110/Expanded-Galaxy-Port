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
void sub3(object objectParam1);
void sub2(object objectParam1, int intParam2, int intParam3);
//void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub3(object objectParam1) {
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToObject(GetObjectByTag("tar05_wprancor", 0), 0));
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
/*
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
void main() {
	object oTar05_stampy = GetObjectByTag("tar05_stampy", 0);
	int int1;
	object object3;
	if (((!GetGlobalBoolean("TAR_RANCOREATING")) && GetIsObjectValid(GetItemPossessedBy(OBJECT_SELF, "tar05_synthodor")))) {
		//sub1("EATING 2...", 5, 5, 5.0);
		sub2(OBJECT_SELF, intGLOB_1, 0);
		SetLocked(OBJECT_SELF, 1);
		SetGlobalBoolean("TAR_RANCOREATING", 1);
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(1.0, sub3(oTar05_stampy));
		ActionWait(1.0);
		ActionStartConversation(OBJECT_SELF, "", 0, 0, 0, "", "", "", "", "", "");
	}
}

