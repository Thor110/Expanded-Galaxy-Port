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
void sub2(int intParam1);
int sub1();

void sub2(int intParam1) {
	SetGlobalNumber("KOR38B_MEKEL_TORTURE", intParam1);
}

int sub1() {
	return GetGlobalNumber("KOR38B_MEKEL_TORTURE");
}

void main() {
	ActionPauseConversation();
	object oPC = GetFirstPC();
	ActionPauseConversation();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionPlayAnimation(22, 1.0, 30.0));
	object oKor38b_mekel = GetObjectByTag("kor38b_mekel", 0);
	vector vPosition = GetPosition(OBJECT_SELF);
	AssignCommand(oKor38b_mekel, SetFacingPoint(vPosition));
	ActionCastFakeSpellAtObject(35, oKor38b_mekel, 0);
	int nMaxHP = GetMaxHitPoints(oKor38b_mekel);
	int int3 = (nMaxHP / 3);
	effect efDamage = EffectDamage(int3, 128, 0);
	ApplyEffectToObject(0, efDamage, oKor38b_mekel, 0.0);
	effect efBeam = EffectBeam(2037, OBJECT_SELF, 0, 0);
	AssignCommand(oKor38b_mekel, ClearAllActions());
	DelayCommand(1.1, ApplyEffectToObject(1, efBeam, oKor38b_mekel, 0.5));
	object oK38b_snd_lghtnng = GetObjectByTag("k38b_snd_lghtnng", 0);
	DelayCommand(1.2, SoundObjectPlay(oK38b_snd_lghtnng));
	object oK38b_snd_mekscrm = GetObjectByTag("k38b_snd_mekscrm", 0);
	DelayCommand(1.2, SoundObjectPlay(oK38b_snd_mekscrm));
	effect efVisual = EffectVisualEffect(1028, 0);
	DelayCommand(1.2, ApplyEffectToObject(1, efVisual, oKor38b_mekel, 1.0));
	DelayCommand(1.2, AssignCommand(oKor38b_mekel, ActionPlayAnimation(21, 1.0, 1.0)));
	int int4 = sub1();
	int4 = (int4 + 1);
	sub2(int4);
	if ((int4 == 3)) {
		DelayCommand(2.5, ApplyEffectToObject(0, EffectDeath(1, 1), oKor38b_mekel, 0.0));
		SetGlobalNumber("KOR_MEKEL_KILLED", 1);
	}
	ActionWait(0.5);
	ActionResumeConversation();
}

