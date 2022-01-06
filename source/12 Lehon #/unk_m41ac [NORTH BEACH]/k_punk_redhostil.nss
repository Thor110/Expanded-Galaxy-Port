// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

int StartingConditional() {
	int int1;
	sub1(("UNK_REDHOSTILE = " + IntToString(GetGlobalBoolean("Unk_RedHostile"))), 5, 5, 5.0);
	int1 = (GetGlobalBoolean("Unk_RedHostile") == 0);
	return int1;
}

