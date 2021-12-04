// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
	ApplyEffectToObject(0, EffectForcePushed(), GetPartyMemberByIndex(0), 0.0);
	ApplyEffectToObject(0, EffectForcePushed(), GetPartyMemberByIndex(1), 0.0);
	ApplyEffectToObject(0, EffectForcePushed(), GetPartyMemberByIndex(2), 0.0);
	sub1("phase 1", 5, 5, 1.0);
	ActionWait(0.5);
	ActionResumeConversation();
}

