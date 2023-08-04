/*
// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
void main() {
	object oREPUBLICSO = GetObjectByTag("REPUBLICSO", 0);
	//sub1(("OWNER - " + GetTag(OBJECT_SELF)), 5, 5, 5.0);
	SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(oREPUBLICSO, ActionMoveToObject(GetObjectByTag("tar04_repsolflee", 0), 1, 1.0));
	ActionPauseConversation();
}

