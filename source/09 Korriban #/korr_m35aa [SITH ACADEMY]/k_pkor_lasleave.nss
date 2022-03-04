// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SetGlobalNumber("KOR_LASHOWE_PLOT", 2);
	object oK35_WAY_K36 = GetObjectByTag("K35_WAY_K36", 0);
	ActionMoveToObject(oK35_WAY_K36, 1, 1.0);
	int nGlobal = GetGlobalNumber("KOR_LASHOWE_PLOT");
	sub1(("Lashowe= " + IntToString(nGlobal)), 10, 10, 4.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

