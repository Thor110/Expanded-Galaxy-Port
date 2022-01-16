// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oSta_way_malak = GetObjectByTag("sta_way_malak", 0);
	ActionPauseConversation();
	AssignCommand(oSta_45darthMalak, ActionMoveToObject(oSta_way_malak, 1, 1.0));
	ActionWait(3.0);
	sub1("Fourth node.", 6, 6, 5.0);
	ActionResumeConversation();
}

