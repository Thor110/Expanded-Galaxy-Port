// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	ActionPauseConversation();
	int int1 = (GetGlobalNumber("STA_MALAK_TALK") + 1);
	SetGlobalNumber("STA_MALAK_TALK", int1);
	sub1(("Malak Talk=" + IntToString(int1)), 10, 10, 5.0);
	ActionResumeConversation();
}

