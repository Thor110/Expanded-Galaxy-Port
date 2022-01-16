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
void sub3(object objectParam1);
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1();

void sub3(object objectParam1) {
	ClearAllEffects();
	ClearAllActions();
	ActionJumpToObject(objectParam1, 0);
	ActionUnequipItem(GetItemInSlot(5, OBJECT_SELF), 1);
	ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 1);
	ApplyEffectToObject(2, EffectDisguise(279), OBJECT_SELF, 0.0);
}

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1() {
	int int1 = 0;
	object oNPC;
	effect effect1;
	object oNearestLev40_wpairlocka = GetNearestObjectByTag("lev40_wpairlocka", OBJECT_SELF, 1);
	object oNearestLev40_wpairlockb = GetNearestObjectByTag("lev40_wpairlockb", OBJECT_SELF, 1);
	object oNearestLev40_wpairlockc = GetNearestObjectByTag("lev40_wpairlockc", OBJECT_SELF, 1);
	SetGlobalBoolean("LEV_SPACESUIT", 1);
	SetGlobalNumber("LEV_SPACEWALK", 45);
	int1;
	while ((int1 < GetPartyMemberCount())) {
		oNPC = GetPartyMemberByIndex(int1);
		sub2("APPLYING DISGUISE", 5, (5 + int1), 5.0);
		if ((int1 == 0)) {
			AssignCommand(oNPC, sub3(oNearestLev40_wpairlocka));
		}
		else {
			if ((int1 == 1)) {
				AssignCommand(oNPC, sub3(oNearestLev40_wpairlockb));
			}
			else {
				AssignCommand(oNPC, sub3(oNearestLev40_wpairlockc));
			}
		}
		(int1++);
	}
}

void main() {
	int int1;
	object object1;
	object oNearestLev40_airlockin = GetNearestObjectByTag("lev40_airlockin", OBJECT_SELF, 1);
	object object4 = OBJECT_SELF;
	object1 = GetItemPossessedBy(GetFirstPC(), "lev40_spacesuit");
	if ((!GetIsObjectValid(object1))) {
		BarkString(OBJECT_SELF, 36976);
		return;
	}
	if (GetGlobalBoolean("LEV_SPACESUIT")) {
		ClearAllActions();
		ActionOpenDoor(OBJECT_SELF);
		return;
	}
	SetPlayerRestrictMode(1);
	NoClicksFor(1.5);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, sub1());
	DelayCommand(1.0, ActionOpenDoor(OBJECT_SELF));
	DelayCommand(1.5, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(1.0, AssignCommand(oNearestLev40_airlockin, ActionCloseDoor(oNearestLev40_airlockin)));
}

