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
void sub3(object objectParam1, int intParam2, int intParam3);
void sub2(int intParam1);
int sub1(int intParam1, int intParam2);

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

void sub2(int intParam1) {
	object object1 = GetItemPossessedBy(GetFirstPC(), "K_COMPUTER_SPIKE");
	if (GetIsObjectValid(object1)) {
		int int2 = GetItemStackSize(object1);
		if ((intParam1 < int2)) {
			intParam1 = (int2 - intParam1);
			SetItemStackSize(object1, intParam1);
		}
		else {
			if (((intParam1 > int2) || (intParam1 == int2))) {
				DestroyObject(object1, 0.0, 0, 0.0);
			}
		}
	}
}

int sub1(int intParam1, int intParam2) {
	float float1 = IntToFloat(GetSkillRank(intParam2, GetPartyMemberByIndex(0)));
	int int2;
	float1 = (float1 / 4.0);
	int2 = (intParam1 - FloatToInt(float1));
	if ((int2 < 1)) {
		if ((int2 <= (-3))) {
			int2 = 0;
		}
		else {
			int2 = 1;
		}
	}
	return int2;
}

void main() {
	object oSta_turret_door = GetObjectByTag("sta_turret_door", 0);
	int int1 = sub1(8, 0);
	sub2(int1);
	sub3(GetModule(), intGLOB_14, 1);
	object oSta_turret1 = GetObjectByTag("sta_turret1", 0);
	object oSta_turret2 = GetObjectByTag("sta_turret2", 0);
	object oSta_turret3 = GetObjectByTag("sta_turret3", 0);
	object oSta_turret4 = GetObjectByTag("sta_turret4", 0);
	object oSta_turret5 = GetObjectByTag("sta_turret5", 0);
	object oSta_turret6 = GetObjectByTag("sta_turret6", 0);
	object oSta_turret7 = GetObjectByTag("sta_turret7", 0);
	object oSta_turret8 = GetObjectByTag("sta_turret8", 0);
	object oSta_turret9 = GetObjectByTag("sta_turret9", 0);
	object oSta_turret10 = GetObjectByTag("sta_turret10", 0);
	object oSta_turret11 = GetObjectByTag("sta_turret11", 0);
	object oSta_turret12 = GetObjectByTag("sta_turret12", 0);
	object oSta_turret13 = GetObjectByTag("sta_turret13", 0);
	object oSta_turret14 = GetObjectByTag("sta_turret14", 0);
	object oSta_turret15 = GetObjectByTag("sta_turret15", 0);
	object oSta_turret16 = GetObjectByTag("sta_turret16", 0);
	ChangeToStandardFaction(oSta_turret1, 5);
	ChangeToStandardFaction(oSta_turret2, 5);
	ChangeToStandardFaction(oSta_turret3, 5);
	ChangeToStandardFaction(oSta_turret5, 5);
	ChangeToStandardFaction(oSta_turret6, 5);
	ChangeToStandardFaction(oSta_turret8, 5);
	ChangeToStandardFaction(oSta_turret12, 5);
	ChangeToStandardFaction(oSta_turret13, 5);
	ChangeToStandardFaction(oSta_turret14, 5);
	ChangeToStandardFaction(oSta_turret15, 5);
	ChangeToStandardFaction(oSta_turret16, 5);
	effect efVisual = EffectVisualEffect(4003, 0);
	DelayCommand(0.1, ApplyEffectToObject(1, efVisual, oSta_turret1, 3.0));
	DelayCommand(1.3, ApplyEffectToObject(1, efVisual, oSta_turret2, 3.0));
	DelayCommand(1.7, ApplyEffectToObject(1, efVisual, oSta_turret3, 3.0));
	DelayCommand(0.90000004, ApplyEffectToObject(1, efVisual, oSta_turret5, 3.0));
	DelayCommand(0.2, ApplyEffectToObject(1, efVisual, oSta_turret6, 3.0));
	DelayCommand(2.5, ApplyEffectToObject(1, efVisual, oSta_turret8, 3.0));
	DelayCommand(1.9, ApplyEffectToObject(1, efVisual, oSta_turret12, 3.0));
	DelayCommand(0.2, ApplyEffectToObject(1, efVisual, oSta_turret13, 3.0));
	DelayCommand(2.5, ApplyEffectToObject(1, efVisual, oSta_turret14, 3.0));
	DelayCommand(0.6, ApplyEffectToObject(1, efVisual, oSta_turret15, 3.0));
	DelayCommand(1.3, ApplyEffectToObject(1, efVisual, oSta_turret16, 3.0));
	SetLocked(oSta_turret_door, 0);
	AssignCommand(oSta_turret_door, ActionOpenDoor(OBJECT_SELF));
}

