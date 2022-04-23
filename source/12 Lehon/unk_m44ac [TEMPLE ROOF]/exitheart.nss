// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	if ((((GetIsObjectValid(GetObjectByTag("jolee", 0)) == 0) && (GetIsObjectValid(GetObjectByTag("juhani", 0)) == 0)) && (GetGlobalNumber("G_FinalChoice") == 1))) {
		sub1("start conv", 5, 5, 1.0);
		if ((GetIsObjectValid(GetObjectByTag("bastila", 0)) == 1)) {
			sub1("bast valid", 5, 6, 1.0);
		}
		else {
			sub1("bast not valid", 5, 6, 1.0);
		}
		AssignCommand(GetObjectByTag("bastila", 0), ClearAllActions());
		DelayCommand(0.5, AssignCommand(GetObjectByTag("bastila", 0), ActionStartConversation(GetFirstPC(), "unk44_exittrig", 0, 0, 1, "", "", "", "", "", "")));
		DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	}
}

