// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object oK35_way_uthleave = GetObjectByTag("k35_way_uthleave", 0);
	object oK35_way_pcleave = GetObjectByTag("k35_way_pcleave", 0);
	SetGlobalFadeOut(3.0, 3.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	AssignCommand(oNPC, ActionMoveToObject(oK35_way_pcleave, 1, 1.0));
	ActionMoveToObject(oK35_way_uthleave, 1, 1.0);
	ActionDoCommand(sub1("Arrived", 5, 5, 10.0));
	ActionResumeConversation();
}

