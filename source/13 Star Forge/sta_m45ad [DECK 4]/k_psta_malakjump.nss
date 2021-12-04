// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oSta_way_captive1 = GetObjectByTag("sta_way_captive1", 0);
	ActionPauseConversation();
	ActionJumpToObject(oSta_way_captive1, 1);
	ActionDoCommand(sub1("First node", 10, 10, 5.0));
	ActionResumeConversation();
}

