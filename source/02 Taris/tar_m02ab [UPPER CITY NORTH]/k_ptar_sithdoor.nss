// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oNPC = GetPartyMemberByIndex(0);
	if ((!GetIsObjectValid(oNPC))) {
		sub1("BAD OPENER", 5, 5, 5.0);
	}
	else {
		sub1(("OPENER - " + GetTag(oNPC)), 5, 5, 5.0);
	}
	if ((!GetLocked(OBJECT_SELF))) {
		return;
	}
	BarkString(OBJECT_SELF, 22073);
}

