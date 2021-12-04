// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		object oK37_plc_cold1 = GetObjectByTag("k37_plc_cold1", 0);
		object oK37_plc_heat3 = GetObjectByTag("k37_plc_heat3", 0);
		if (GetIsObjectValid(oK37_plc_cold1)) {
			sub1("Trap Valid", 10, 10, 10.0);
			AssignCommand(oK37_plc_cold1, ActionPlayAnimation(205, 1.0, 0.0));
		}
		if (GetIsObjectValid(oK37_plc_heat3)) {
			sub1("Second Trap Valid", 8, 8, 10.0);
			AssignCommand(oK37_plc_heat3, ActionPlayAnimation(204, 1.0, 0.0));
		}
	}
}

