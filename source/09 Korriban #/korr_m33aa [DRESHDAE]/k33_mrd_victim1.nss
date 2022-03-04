// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	ActionPauseConversation();
	object oKor33b_victim1 = GetObjectByTag("kor33b_victim1", 0);
	vector vPosition = GetPosition(oKor33b_victim1);
	SetFacingPoint(vPosition);
	AssignCommand(oKor33b_victim1, PlayAnimation(6, 1.0, 2.0));
	ActionCastFakeSpellAtObject(15, oKor33b_victim1, 0);
	effect efBeam = EffectBeam(2029, OBJECT_SELF, 0, 0);
	effect efVisual = EffectVisualEffect(1009, 0);
	effect efDeath = EffectDeath(0, 1);
	DelayCommand(1.1, ApplyEffectToObject(1, efBeam, oKor33b_victim1, 1.0));
	DelayCommand(1.2, ApplyEffectToObject(1, efVisual, oKor33b_victim1, 1.0));
	object oK33a_snd_drnvic = GetObjectByTag("k33a_snd_drnvic", 0);
	object oK33a_snd_vicscrm = GetObjectByTag("k33a_snd_vicscrm", 0);
	DelayCommand(1.1, SoundObjectPlay(oK33a_snd_drnvic));
	DelayCommand(1.25, SoundObjectPlay(oK33a_snd_vicscrm));
	DelayCommand(1.5, ApplyEffectToObject(0, efDeath, oKor33b_victim1, 0.0));
	ActionWait(1.0);
	ActionDoCommand(sub1("Murder done", 10, 10, 5.0));
	ActionResumeConversation();
}

