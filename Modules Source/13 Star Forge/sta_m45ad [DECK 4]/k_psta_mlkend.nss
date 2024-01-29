// Prototypes
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1();

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1() {
	StartNewModule("STUNT_54a", "", "51", "", "", "", "", "");
}

void main() {
	SetGlobalBoolean("STA_MALAK_DEAD", 1);
	object oPC = GetFirstPC();
	if (((GetGlobalNumber("G_FinalChoice") == 1) && (GetGlobalNumber("K_SWG_CARTH") != 16))) {
		sub1();
		sub2("GAME OVER", 10, 10, 5.0);
	}
	else {
		NoClicksFor(0.7);
		DelayCommand(0.5, ActionStartConversation(GetFirstPC(), "sta_walkaway", 0, 0, 1, "", "", "", "", "", ""));
	}
}

