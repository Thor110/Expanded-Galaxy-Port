void main() {
	object oKor38b_mekel = GetObjectByTag("kor38b_mekel", 0);
	object oKor38b_jorakuln = GetObjectByTag("kor38b_jorakuln", 0);
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object9 = GetPartyMemberByIndex(2);
	ActionPauseConversation();
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
	}
	if (GetIsObjectValid(object9)) {
		AssignCommand(object9, ClearAllActions());
	}
	AssignCommand(oKor38b_mekel, ClearAllActions());
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oKor38b_mekel, ActionCastFakeSpellAtObject(15, oKor38b_jorakuln, 0));
	effect efBeam = EffectBeam(2029, oKor38b_mekel, 0, 0);
	effect effect3 = EffectBeam(2029, oKor38b_jorakuln, 1, 0);
	DelayCommand(1.0, ApplyEffectToObject(1, efBeam, oKor38b_jorakuln, 1.0));
	object oK38b_snd_drnlife = GetObjectByTag("k38b_snd_drnlife", 0);
	DelayCommand(1.0, SoundObjectPlay(oK38b_snd_drnlife));
	DelayCommand(0.7, AssignCommand(oKor38b_jorakuln, ActionPlayAnimation(21, 1.0, 1.0)));
	effect efVisual = EffectVisualEffect(1009, 0);
	DelayCommand(1.1, ApplyEffectToObject(1, efVisual, oKor38b_jorakuln, 1.0));
	DelayCommand(1.25, ApplyEffectToObject(1, effect3, oPC, 1.0));
	if (GetIsObjectValid(oNPC)) {
		DelayCommand(1.25, ApplyEffectToObject(1, effect3, oNPC, 1.0));
	}
	if (GetIsObjectValid(object9)) {
		DelayCommand(1.25, ApplyEffectToObject(1, effect3, object9, 1.0));
	}
	ActionWait(1.0);
	ActionResumeConversation();
}

