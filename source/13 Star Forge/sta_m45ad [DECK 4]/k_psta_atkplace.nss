// Globals
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
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
int sub3();
int sub2();
int sub1();

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

int sub3() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub2() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 20) && (nAlign < 40))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub1() {
	if ((sub2() || sub3())) {
		return 1;
	}
	else {
		return 0;
	}
}

void main() {
	int int1 = intGLOB_2;
	int int2 = intGLOB_3;
	int int3 = intGLOB_4;
	object oSta_invis_camera = GetObjectByTag("sta_invis_camera", 0);
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	object oCaster = GetLastSpellCaster();
	int int4 = GetLastSpell();
	int nMaxHP = GetMaxHitPoints(oCaster);
	int nCurHP = GetCurrentHitPoints(oCaster);
	int nMaxFP = GetMaxForcePoints(oCaster);
	int nCurFP = GetCurrentForcePoints(oCaster);
	if (GetFactionEqual(OBJECT_SELF, oSta_invis_camera)) {
		ChangeToStandardFaction(OBJECT_SELF, 5);
		DestroyObject(oNearestSta_malak_drain, 0.0, 0, 0.0);
		if ((!sub1())) {
			PlayAnimation(202, 1.0, 0.0);
			sub4(OBJECT_SELF, int2, 1);
		}
		else {
			PlayAnimation(201, 1.0, 0.0);
			sub4(OBJECT_SELF, int1, 1);
		}
		DelayCommand(0.3, ApplyEffectToObject(0, EffectVisualEffect(1032, 0), oCaster, 0.0));
		DelayCommand(0.4, ApplyEffectToObject(0, EffectHealForcePoints((nMaxFP - nCurFP)), oCaster, 0.0));
	}
}

