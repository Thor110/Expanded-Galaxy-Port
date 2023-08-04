// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	AurPostString(stringParam1, intParam2, intParam3, floatParam4);
}

void main() {
	int nAlign = GetGoodEvilValue(GetFirstPC());
	int int3;
	sub1(("ALIGN-" + IntToString(nAlign)), 5, 5, 5.0);
	SetGlobalNumber("LEV_ALIGNMENT", nAlign);
	int3 = 0;
	while ((int3 < nAlign)) {
		AdjustAlignment(GetFirstPC(), 3, 1);
		(int3++);
	}
	sub1(("ALIGN-" + IntToString(GetGoodEvilValue(GetFirstPC()))), 5, 6, 5.0);
}

