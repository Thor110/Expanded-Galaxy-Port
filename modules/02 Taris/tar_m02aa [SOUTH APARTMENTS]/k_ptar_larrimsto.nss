// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	sub1("Open Store", 5, 5, 1.0);
	DelayCommand(0.1, OpenStore(GetObjectByTag("Larrim_Store", 0), GetPCSpeaker(), 0, 0));
}

