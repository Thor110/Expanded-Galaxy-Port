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
void sub2(object objectParam1);
void sub1();

void sub2(object objectParam1) {
	ClearAllEffects();
	ClearAllActions();
	ActionJumpToObject(objectParam1, 0);
}

void sub1() {
	int int1;
	object oNPC;
	effect effect1;
	object oNearestLev40_wpairlocka = GetNearestObjectByTag("lev40_wpairlocka", OBJECT_SELF, 1);
	object oNearestLev40_wpairlockb = GetNearestObjectByTag("lev40_wpairlockb", OBJECT_SELF, 1);
	object oNearestLev40_wpairlockc = GetNearestObjectByTag("lev40_wpairlockc", OBJECT_SELF, 1);
	int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		oNPC = GetPartyMemberByIndex(int1);
		if ((int1 == 0)) {
			AssignCommand(oNPC, sub2(oNearestLev40_wpairlocka));
		}
		else {
			if ((int1 == 1)) {
				AssignCommand(oNPC, sub2(oNearestLev40_wpairlockb));
			}
			else {
				AssignCommand(oNPC, sub2(oNearestLev40_wpairlockc));
			}
		}
		(int1++);
	}
	SetGlobalBoolean("LEV_SPACESUIT", 0);
	SetGlobalNumber("LEV_SPACEWALK", 0);
}

void main() {
	object oNearestLev40_airlockout = GetNearestObjectByTag("lev40_airlockout", OBJECT_SELF, 1);
	AssignCommand(oNearestLev40_airlockout, ActionCloseDoor(oNearestLev40_airlockout));
	if ((!GetGlobalBoolean("LEV_SPACESUIT"))) {
		return;
	}
	SetPlayerRestrictMode(0);
	NoClicksFor(1.5);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, sub1());
	DelayCommand(1.5, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
}

