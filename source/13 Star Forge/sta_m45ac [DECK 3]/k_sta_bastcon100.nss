// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

int StartingConditional() {
	int int1;
	int nGlobal = GetGlobalNumber("Sta_BastConversion");
	sub1(("Bast Conversion = " + IntToString(nGlobal)), 10, 10, 4.0);
	int1 = (nGlobal >= 10);
	return int1;
}

