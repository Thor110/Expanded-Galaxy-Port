// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	if ((GetGlobalBoolean("YAV_SUVAMA") == 1)) {
		sub1("area enter: TRUE", 5, 5, 5.0);
	}
	else {
		sub1("area enter: FALSE", 5, 5, 5.0);
	}
	sub1(("suvam number: " + IntToString(GetGlobalNumber("YAV_SUVAM"))), 5, 6, 5.0);
	sub1(("star maps: " + IntToString(GetGlobalNumber("K_STAR_MAP"))), 5, 7, 5.0);
}

