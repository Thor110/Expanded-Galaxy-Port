// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SetGlobalFadeOut(0.1, 1.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(0.5, StartNewModule("STUNT_54a", "", "54", "", "", "", "", ""));
	sub1("GAME OVER", 10, 10, 5.0);
	DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0));
}

