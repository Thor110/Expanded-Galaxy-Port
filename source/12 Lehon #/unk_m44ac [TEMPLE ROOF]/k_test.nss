// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int nGlobal = GetGlobalNumber("UNK_AREA");
	string string1 = IntToString(nGlobal);
	sub1(("Area " + string1), 5, 5, 1.0);
}

