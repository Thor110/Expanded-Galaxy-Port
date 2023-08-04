void main() {
	ActionPauseConversation();
	object oK38b_snd_mekscrm = GetObjectByTag("k38b_snd_mekscrm", 0);
	object oK38b_snd_femscrm = GetObjectByTag("k38b_snd_femscrm", 0);
	object oPC = GetFirstPC();
	ActionCastFakeSpellAtObject(35, oPC, 0);
	int nCurHP = GetCurrentHitPoints(oPC);
	int int3 = (nCurHP / 4);
	effect efDamage = EffectDamage(int3, 128, 0);
	ApplyEffectToObject(0, efDamage, oPC, 0.0);
	effect efBeam = EffectBeam(2037, OBJECT_SELF, 0, 0);
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(1.1, ApplyEffectToObject(1, efBeam, oPC, 0.5));
	object oK38b_snd_lghtnng = GetObjectByTag("k38b_snd_lghtnng", 0);
	DelayCommand(1.2, SoundObjectPlay(oK38b_snd_lghtnng));
	effect efVisual = EffectVisualEffect(1028, 0);
	if ((GetGender(oPC) == 1)) {
		DelayCommand(1.2, SoundObjectPlay(oK38b_snd_femscrm));
	}
	else {
		if ((GetGender(oPC) == 0)) {
			DelayCommand(1.2, SoundObjectPlay(oK38b_snd_mekscrm));
		}
	}
	DelayCommand(1.2, ApplyEffectToObject(1, efVisual, oPC, 0.8));
	DelayCommand(1.2, AssignCommand(oPC, ActionPlayAnimation(21, 1.0, 1.5)));
	object oKor38b_mekel = GetObjectByTag("kor38b_mekel", 0);
	if (GetIsObjectValid(oKor38b_mekel)) {
		AssignCommand(oKor38b_mekel, ClearAllActions());
		AssignCommand(oKor38b_mekel, ActionPlayAnimation(22, 1.0, 30.0));
	}
	ActionWait(1.0);
	ActionResumeConversation();
}

