// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oK33_shastudent1 = GetObjectByTag("k33_shastudent1", 0);
	object oK33_shastudent2 = GetObjectByTag("k33_shastudent2", 0);
	object oK33_shastudent3 = GetObjectByTag("k33_shastudent3", 0);
	ActionPauseConversation();
	ActionCastFakeSpellAtObject(30, oK33_shastudent1, 0);
	if (((GetIsObjectValid(oK33_shastudent1) && GetIsObjectValid(oK33_shastudent2)) && GetIsObjectValid(oK33_shastudent3))) {
		effect efBeam = EffectBeam(2029, OBJECT_SELF, 0, 0);
		effect efVisual = EffectVisualEffect(1009, 0);
		effect effect5 = EffectHorrified();
		effect efDamage = EffectDamage(7, 8, 0);
		object oK33a_snd_drnlife = GetObjectByTag("k33a_snd_drnlife", 0);
		object oK33a_snd_shascrm = GetObjectByTag("k33a_snd_shascrm", 0);
		object oK33a_snd_femscrm = GetObjectByTag("k33a_snd_femscrm", 0);
		object oK33a_snd_twiscrm = GetObjectByTag("k33a_snd_twiscrm", 0);
		DelayCommand(1.0, SoundObjectPlay(oK33a_snd_drnlife));
		DelayCommand(1.1, SoundObjectPlay(oK33a_snd_shascrm));
		DelayCommand(1.2, SoundObjectPlay(oK33a_snd_femscrm));
		DelayCommand(1.3, SoundObjectPlay(oK33a_snd_twiscrm));
		DelayCommand(1.0, ApplyEffectToObject(1, efBeam, oK33_shastudent1, 1.0));
		DelayCommand(1.25, ApplyEffectToObject(1, efVisual, oK33_shastudent1, 1.0));
		DelayCommand(1.0, ApplyEffectToObject(0, efDamage, oK33_shastudent1, 0.0));
		DelayCommand(1.0, ApplyEffectToObject(1, efBeam, oK33_shastudent2, 1.0));
		DelayCommand(1.25, ApplyEffectToObject(1, efVisual, oK33_shastudent2, 1.0));
		DelayCommand(1.0, ApplyEffectToObject(0, efDamage, oK33_shastudent2, 0.0));
		DelayCommand(1.0, ApplyEffectToObject(1, efBeam, oK33_shastudent3, 1.0));
		DelayCommand(1.25, ApplyEffectToObject(1, efVisual, oK33_shastudent3, 1.0));
		DelayCommand(1.0, ApplyEffectToObject(0, efDamage, oK33_shastudent3, 0.0));
	}
	else {
		sub1("INVALID OBJECTS", 10, 10, 4.0);
	}
	ActionResumeConversation();
}

