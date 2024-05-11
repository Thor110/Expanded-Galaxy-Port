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
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1();

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1() {
	int int1;
	object oNPC;
	effect efNext;
	if ((!GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "lev40_spacesuit")))) {
		return;
	}
	SetGlobalBoolean("LEV_SPACESUIT", (!GetGlobalBoolean("LEV_SPACESUIT")));
	if (GetGlobalBoolean("LEV_SPACESUIT")) {
		int1 = 0;
		while ((int1 < GetPartyMemberCount())) {
			oNPC = GetPartyMemberByIndex(int1);
			sub2("APPLYING DISGUISE", 5, (5 + int1), 5.0);
			ApplyEffectToObject(2, EffectDisguise(181), oNPC, 0.0);
			(int1++);
		}
	}
	else {
		int1 = 0;
		while ((int1 < GetPartyMemberCount())) {
			oNPC = GetPartyMemberByIndex(int1);
			efNext = GetFirstEffect(oNPC);
			while (GetIsEffectValid(efNext)) {
				if ((GetEffectType(efNext) == 62)) {
					sub2("REMOVING DISGUISE", 5, (5 + int1), 5.0);
					RemoveEffect(oNPC, efNext);
				}
				efNext = GetNextEffect(oNPC);
			}
			(int1++);
		}
	}
}

void main() {
	object oEntering = GetEnteringObject();
	sub1();
	if ((!GetIsPC(oEntering))) {
		return;
	}
	if ((!GetGlobalBoolean("LEV_SPACESUIT"))) {
		DelayCommand(1.0, ApplyEffectToObject(0, EffectDeath(0, 1), GetFirstPC(), 0.0));
	}
	else {
		SetGlobalNumber("LEV_SPACEWALK", 45);
	}
}

