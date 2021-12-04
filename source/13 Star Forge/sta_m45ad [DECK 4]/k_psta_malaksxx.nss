// Prototypes
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1(float floatParam1);

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	sub1(2.0);
	int int1 = (GetGlobalNumber("STA_MALAK_TALK") + 1);
	SetGlobalNumber("STA_MALAK_TALK", int1);
	sub2(("Malak Talk=" + IntToString(int1)), 10, 10, 5.0);
	SetFacingPoint(GetPosition(GetFirstPC()));
	SetLockOrientationInDialog(OBJECT_SELF, 0);
}

