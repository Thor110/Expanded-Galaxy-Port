// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int int1 = GetStandardFaction(GetObjectByTag("jolee", 0));
	sub1(("Jolee " + IntToString(int1)), 2, 5, 3.0);
	int1 = GetStandardFaction(GetObjectByTag("juhani", 0));
	sub1(("Juhani " + IntToString(int1)), 2, 6, 3.0);
}

