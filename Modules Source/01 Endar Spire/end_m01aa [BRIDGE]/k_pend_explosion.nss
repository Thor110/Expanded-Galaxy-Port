// Prototypes
void sub2(string stringParam1, int intParam2, int intParam3);
void sub1(float floatParam1);

void sub2(string stringParam1, int intParam2, int intParam3) {
	location location1 = GetLocation(GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1));
	effect efVisual = EffectVisualEffect(3003, 0);
	effect effect3 = EffectVisualEffect(6002, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	if (intParam2) {
		ApplyEffectToObject(0, effect3, GetFirstPC(), 0.0);
	}
	if (intParam3) {
		PlayRumblePattern(14);
	}
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oEnd_cut2_soldier3 = GetObjectByTag("end_cut2_soldier3", 0);
	object oEnd_cut2_soldier4 = GetObjectByTag("end_cut2_soldier4", 0);
	object oEnd_explosion = GetObjectByTag("end_explosion", 0);
	location location1 = GetLocation(oEnd_explosion);
	object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
	object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
	sub1(1.9);
	AssignCommand(oEnd_cut2_sith5, CutsceneAttack(oEnd_explosion, 239, 1, 0));
	DelayCommand(0.3, AssignCommand(oEnd_cut2_soldier3, CutsceneAttack(oEnd_cut2_sith5, 239, 4, 0)));
	DelayCommand(0.95000005, SetDialogPlaceableCamera(30));
	DelayCommand(1.0, sub2("end_cut2_explode1", 1, 1));
	DelayCommand(1.1, ApplyEffectToObject(0, EffectDamage(100, 8, 0), oEnd_explosion, 0.0));
	DelayCommand(1.2, ApplyEffectToObject(0, EffectForcePushTargeted(location1, 0), oEnd_cut2_soldier3, 0.0));
	DelayCommand(1.4, SetMinOneHP(oEnd_cut2_soldier3, 0));
	DelayCommand(1.25, SetDialogPlaceableCamera(36));
}

