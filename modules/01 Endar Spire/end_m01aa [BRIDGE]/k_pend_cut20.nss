// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3);

void sub1(string stringParam1, int intParam2, int intParam3) {
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

void main() {
	object oEnd_jedi01 = GetObjectByTag("end_jedi01", 0);
	ActionPauseConversation();
	ActionWait(2.0);
	ActionDoCommand(SetMinOneHP(oEnd_jedi01, 0));
	ActionDoCommand(ApplyEffectToObject(0, EffectDeath(0, 1), oEnd_jedi01, 0.0));
	ActionDoCommand(sub1("wp_cutblast03", 1, 1));
	ActionWait(2.0);
	ActionResumeConversation();
}

