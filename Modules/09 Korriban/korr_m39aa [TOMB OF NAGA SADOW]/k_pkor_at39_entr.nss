// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oPC = GetFirstPC();
	int nGlobal = GetGlobalNumber("KOR_START_FINAL");
	sub1(("Final Number = " + IntToString(nGlobal)), 10, 10, 4.0);
	if (((nGlobal != 2) && (GetEnteringObject() == oPC))) {
		StartNewModule("korr_m36aa", "K36_WAY_K39", "", "", "", "", "", "");
	}
}

