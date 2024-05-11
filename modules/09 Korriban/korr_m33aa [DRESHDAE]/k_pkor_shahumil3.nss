// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oK33_shastudent3 = GetObjectByTag("k33_shastudent3", 0);
	ActionPauseConversation();
	sub1("Third guy", 10, 10, 5.0);
	ActionCastFakeSpellAtObject(30, oK33_shastudent3, 0);
	effect effect1 = EffectHorrified();
	ApplyEffectToObject(1, effect1, oK33_shastudent3, 0.5);
	ActionResumeConversation();
}

