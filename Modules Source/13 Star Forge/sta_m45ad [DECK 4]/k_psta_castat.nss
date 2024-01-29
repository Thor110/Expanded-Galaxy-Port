// Globals
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
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

// Prototypes
int sub7();
int sub6();
int sub5();
void sub4();
void sub3(object objectParam1, int intParam2, int intParam3);
void sub2(object objectParam1, int intParam2);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

int sub7() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub6() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 20) && (nAlign < 40))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub5() {
	if ((sub6() || sub7())) {
		return 1;
	}
	else {
		return 0;
	}
}

void sub4() {
	object oNearestDrainedcaptive = GetNearestObjectByTag("drainedcaptive", OBJECT_SELF, 1);
	SoundObjectPlay(oNearestDrainedcaptive);
	DelayCommand(5.0, DestroyObject(oNearestDrainedcaptive, 0.0, 0, 0.0));
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

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
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
	object oNearestFrcefldroom = GetNearestObjectByTag("frcefldroom", OBJECT_SELF, 1);
	object oNearestForcefield2 = GetNearestObjectByTag("forcefield2", OBJECT_SELF, 1);
	object oNearestBuzzz = GetNearestObjectByTag("buzzz", OBJECT_SELF, 1);
	int nGlobal = GetGlobalNumber("K_END_JEDI_LEFT");
	int int16 = GetGlobalNumber("K_END_MALAK_JEDI_USED");
	if (GetFactionEqual(OBJECT_SELF, oSta_invis_camera)) {
		if (((int4 == 15) || (int4 == 11))) {
			sub1(("Captives left = " + IntToString((nGlobal - 1))), 10, 10, 5.0);
			SetGlobalNumber("K_END_JEDI_LEFT", (nGlobal - 1));
			sub1(("Malak drained = " + IntToString(int16)), 12, 12, 5.0);
			ChangeToStandardFaction(OBJECT_SELF, 5);
			DestroyObject(oNearestSta_malak_drain, 0.0, 0, 0.0);
			sub2(OBJECT_SELF, 0);
			sub3(OBJECT_SELF, int1, 1);
			DelayCommand(0.3, PlayAnimation(201, 1.0, 0.0));
			DelayCommand(0.3, ApplyEffectToObject(0, EffectHeal((nMaxHP - nCurHP)), oCaster, 0.0));
			DelayCommand(0.3, ApplyEffectToObject(0, EffectHealForcePoints((nMaxFP - nCurFP)), oCaster, 0.0));
			SoundObjectStop(oNearestBuzzz);
			DelayCommand(0.5, CancelCombat(oCaster));
		}
		else {
			if (((((int4 == 35) || (int4 == 9)) || (int4 == 32)) || (int4 == 25))) {
				sub1(("Captives left = " + IntToString((nGlobal - 1))), 10, 10, 5.0);
				SetGlobalNumber("K_END_JEDI_LEFT", (nGlobal - 1));
				sub1(("Malak drained = " + IntToString(int16)), 12, 12, 5.0);
				ChangeToStandardFaction(OBJECT_SELF, 5);
				DestroyObject(oNearestSta_malak_drain, 0.0, 0, 0.0);
				sub2(OBJECT_SELF, 0);
				DelayCommand(0.3, sub4());
				DelayCommand(0.3, PlayAnimation(201, 1.0, 0.0));
				DelayCommand(0.5, CancelCombat(oCaster));
				sub3(OBJECT_SELF, int3, 1);
				SoundObjectStop(oNearestBuzzz);
			}
			else {
				if ((((((int4 == 13) || (int4 == 12)) || (int4 == 19)) || (int4 == 49)) || (int4 == 4))) {
					DestroyObject(oNearestSta_malak_drain, 0.0, 0, 0.0);
					if ((!sub5())) {
						if (((int4 == 49) || (int4 == 4))) {
							sub1(("Captives left = " + IntToString((nGlobal - 1))), 10, 10, 5.0);
							SetGlobalNumber("K_END_JEDI_LEFT", (nGlobal - 1));
							sub1(("Malak drained = " + IntToString(int16)), 12, 12, 5.0);
							DelayCommand(1.2, sub4());
							DelayCommand(1.2, PlayAnimation(202, 1.0, 0.0));
							sub3(OBJECT_SELF, int2, 1);
							DelayCommand(1.5, ApplyEffectToObject(0, EffectVisualEffect(1019, 0), oCaster, 0.0));
							DelayCommand(1.2, ChangeToStandardFaction(OBJECT_SELF, 5));
							DelayCommand(1.6, ApplyEffectToObject(0, EffectHealForcePoints((nMaxFP - nCurFP)), oCaster, 0.0));
							DelayCommand(1.8, CancelCombat(oCaster));
						}
						else {
							sub1(("Captives left = " + IntToString((nGlobal - 1))), 10, 10, 5.0);
							SetGlobalNumber("K_END_JEDI_LEFT", (nGlobal - 1));
							sub1(("Malak drained = " + IntToString(int16)), 12, 12, 5.0);
							DelayCommand(0.3, sub4());
							DelayCommand(0.3, PlayAnimation(202, 1.0, 0.0));
							sub3(OBJECT_SELF, int2, 1);
							DelayCommand(0.3, ChangeToStandardFaction(OBJECT_SELF, 5));
							DelayCommand(0.3, ApplyEffectToObject(0, EffectVisualEffect(1019, 0), oCaster, 0.0));
							DelayCommand(0.4, ApplyEffectToObject(0, EffectHealForcePoints((nMaxFP - nCurFP)), oCaster, 0.0));
							DelayCommand(0.5, CancelCombat(oCaster));
						}
					}
					else {
						if (((int4 == 49) || (int4 == 4))) {
							sub1(("Captives left = " + IntToString((nGlobal - 1))), 10, 10, 5.0);
							SetGlobalNumber("K_END_JEDI_LEFT", (nGlobal - 1));
							sub1(("Malak drained = " + IntToString(int16)), 12, 12, 5.0);
							DelayCommand(1.2, sub4());
							DelayCommand(1.2, PlayAnimation(201, 1.0, 0.0));
							DelayCommand(1.2, ChangeToStandardFaction(OBJECT_SELF, 5));
							DelayCommand(1.5, CancelCombat(oCaster));
							sub3(OBJECT_SELF, int1, 1);
						}
						else {
							sub1(("Captives left = " + IntToString((nGlobal - 1))), 10, 10, 5.0);
							SetGlobalNumber("K_END_JEDI_LEFT", (nGlobal - 1));
							sub1(("Malak drained = " + IntToString(int16)), 12, 12, 5.0);
							DelayCommand(0.3, sub4());
							DelayCommand(0.3, PlayAnimation(201, 1.0, 0.0));
							sub3(OBJECT_SELF, int1, 1);
							DelayCommand(0.0, ChangeToStandardFaction(OBJECT_SELF, 5));
							DelayCommand(0.5, CancelCombat(oCaster));
						}
					}
					sub2(OBJECT_SELF, 0);
					SoundObjectStop(oNearestFrcefldroom);
					SoundObjectStop(oNearestForcefield2);
				}
				else {
					ClearAllEffects();
					CancelCombat(oCaster);
					ActionStartConversation(oCaster, "sta_capt_force", 0, 0, 0, "", "", "", "", "", "", 0);
				}
			}
		}
	}
}

