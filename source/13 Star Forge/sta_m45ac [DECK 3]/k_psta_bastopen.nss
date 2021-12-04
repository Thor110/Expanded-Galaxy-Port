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
void sub4();
void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub2(object objectParam1, int intParam2, int intParam3);
int sub1(object objectParam1, int intParam2);

void sub4() {
	StartNewModule("STUNT_50a", "", "50b", "", "", "", "", "");
}

void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
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
	if ((!sub1(OBJECT_SELF, intGLOB_10))) {
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		location location1 = GetLocation(OBJECT_SELF);
		object oSta_bastila = GetObjectByTag("sta_bastila", 0);
		sub2(OBJECT_SELF, intGLOB_10, 1);
		CreateObject(32, "g_lastlocal", location1, 0);
		object oK45_door_bast1 = GetObjectByTag("k45_door_bast1", 0);
		object oK45_door_bast2 = GetObjectByTag("k45_door_bast2", 0);
		AssignCommand(oK45_door_bast2, ActionCloseDoor(OBJECT_SELF));
		DelayCommand(0.1, SetLocked(oK45_door_bast2, 0));
		int nGlobal = GetGlobalNumber("Sta_BastConversion");
		SetGlobalBoolean("K_PSTA_BASTSAVE", 1);
    AddAvailableNPCByTemplate(0, "p_bastilla");
		sub3(("Bast Conversion = " + IntToString(nGlobal)), 10, 10, 4.0);
		ChangeToStandardFaction(oSta_bastila, 2);
		SetGlobalBoolean("STA_BASTILA_STUNT", 1);
		DelayCommand(0.2, ApplyEffectToObject(0, EffectHeal(50), oSta_bastila, 0.0));
		DelayCommand(0.5, AssignCommand(oSta_bastila, ClearAllActions()));
		DelayCommand(0.5, AssignCommand(oSta_bastila, JumpToLocation(GetLocation(GetObjectByTag("STA_BAST_JUMP", 0)))));
		DelayCommand(0.8, AssignCommand(oSta_bastila, SignalEvent(OBJECT_SELF, EventUserDefined(8888))));
		DelayCommand(1.0, sub4());
	}
}

