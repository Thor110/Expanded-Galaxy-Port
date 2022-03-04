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
void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub3(object objectParam1, int intParam2, int intParam3);
void sub2(int intParam1, string stringParam2, location locationParam3);
void sub1(float floatParam1);

void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
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

void sub2(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oNearestSta_invis_beam6 = GetNearestObjectByTag("sta_invis_beam6", OBJECT_SELF, 1);
	location location1 = GetLocation(oNearestSta_invis_beam6);
	effect efVisual = EffectVisualEffect(3003, 0);
	effect effect3 = EffectVisualEffect(1007, 0);
	sub1(5.5);
	DelayCommand(0.7, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	DelayCommand(0.8, sub2(64, "sta_smoke", location1));
	int nGlobal = GetGlobalNumber("STA_GENERATORS");
	nGlobal = (nGlobal + 1);
	SetGlobalNumber("STA_GENERATORS", nGlobal);
	sub3(OBJECT_SELF, intGLOB_1, 1);
	sub4(("Generators Dead: " + IntToString(nGlobal)), 10, 10, 5.0);
	if ((nGlobal >= 6)) {
		object oK45_door_malak = GetObjectByTag("k45_door_malak", 0);
		SetLocked(oK45_door_malak, 0);
		DelayCommand(2.9, PlaySound("cs_sfgenstop"));
		DelayCommand(3.0, SoundObjectPlay(GetObjectByTag("sta_generator", 0)));
		DelayCommand(3.0, SetDialogPlaceableCamera(6));
		DelayCommand(3.2, AssignCommand(oK45_door_malak, ActionOpenDoor(OBJECT_SELF)));
	}
	else {
		DelayCommand(5.5, SetGlobalBoolean("STA_DROID_STAND", 0));
		DelayCommand(5.5, ChangeFactionByFaction(4, 1));
	}
	PlayAnimation(200, 1.0, 0.0);
}

