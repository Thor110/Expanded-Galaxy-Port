// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	ActionPauseConversation();
	object oSta_plc_captive = GetObjectByTag("sta_plc_captive", 0);
	ActionMoveToObject(oSta_plc_captive, 0, 1.0);
	ActionDoCommand(sub1("Second node", 8, 8, 5.0));
	ActionResumeConversation();
}

