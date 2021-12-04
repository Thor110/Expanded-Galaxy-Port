// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int nGlobal = GetGlobalNumber("STA_GENERATORS");
	nGlobal = (nGlobal + 1);
	SetGlobalNumber("STA_GENERATORS", nGlobal);
	sub1(("Generators Dead: " + IntToString(nGlobal)), 10, 10, 5.0);
	if ((nGlobal >= 6)) {
		object oSta45c_sta45d = GetObjectByTag("sta45c_sta45d", 0);
		SetLocked(oSta45c_sta45d, 0);
	}
}

