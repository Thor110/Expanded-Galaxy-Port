// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	if (GetGlobalBoolean("Tar_SwoopRace")) {
		if (GetIsObjectValid(CreateObject(1, "tar03_brejik031", GetLocation(GetObjectByTag("tar03_wpsrcut_01", 0)), 0))) {
			sub1("BREJIK CREATED", 5, 5, 1.0);
		}
		CreateObject(1, "tar03_raceannoun", GetLocation(GetObjectByTag("tar03_wpsrcut_02", 0)), 0);
		CreateObject(1, "tar03_bastila", GetLocation(GetObjectByTag("tar03_wpsrcut_03", 0)), 0);
	}
}
