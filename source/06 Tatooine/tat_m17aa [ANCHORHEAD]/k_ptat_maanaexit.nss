// Prototypes
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub2() {
	object oNearestTat17aa_exit = GetNearestObjectByTag("tat17aa_exit", OBJECT_SELF, 1);
	ActionMoveToObject(oNearestTat17aa_exit, 0, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	sub1("Maana Leaving", 5, 5, 1.0);
	DelayCommand(0.3, sub2());
}

