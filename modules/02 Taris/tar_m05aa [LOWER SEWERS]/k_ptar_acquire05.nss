// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oPC = GetFirstPC();
	object object3 = GetModuleItemAcquired();
	string string1 = IntToString(GetItemStackSize(GetItemPossessedBy(GetFirstPC(), "ptar_rukjournal")));
	AurPostString(GetTag(object3), 5, 10, 5.0);
	if ((GetTag(object3) == "ptar_rukjournal")) {
		AurPostString("First True", 5, 8, 5.0);
	}
	if ((GetGlobalNumber("Tar_Rukil") >= 20)) {
		AurPostString("Second True", 5, 9, 5.0);
	}
	if (((GetTag(object3) == "ptar_rukjournal") && (GetGlobalNumber("Tar_Rukil") >= 20))) {
		if ((GetItemStackSize(GetItemPossessedBy(GetFirstPC(), "ptar_rukjournal")) >= 2)) {
			sub1("Adding entry 25", 6, 6, 6.0);
			AddJournalQuestEntry("tar_promisedland", 25, 0);
		}
		if ((GetItemStackSize(GetItemPossessedBy(GetFirstPC(), "ptar_rukjournal")) == 1)) {
			sub1("Adding entry 22", 5, 5, 5.0);
			AddJournalQuestEntry("tar_promisedland", 22, 0);
		}
	}
}

