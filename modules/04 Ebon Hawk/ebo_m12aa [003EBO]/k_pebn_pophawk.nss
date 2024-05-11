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
void sub9(int intParam1, string stringParam2, location locationParam3);
void sub8(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub7();
void sub6(object objectParam1);
void sub5();
void sub4(int intParam1, location locationParam2);
void sub3();
void sub2();
void sub1(string stringParam1);

void sub9(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub8(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub7() {
	int int1 = 0;
	while (GetIsObjectValid(GetObjectByTag("gizka", int1))) {
		DelayCommand(0.2, DestroyObject(GetObjectByTag("gizka", int1), 0.0, 0, 0.0));
		(int1++);
		sub8(("Destroy Gizka " + IntToString(int1)), 5, 5, 1.0);
	}
	int int3;
	int int4 = 0;
	if ((GetGlobalNumber("EBO_GIZKA_PLOT") == 1)) {
		SetGlobalNumber("GizkaMultiplier", (GetGlobalNumber("GizkaMultiplier") + 1));
		int3 = ((GetGlobalNumber("GizkaMultiplier") + 1) * 3);
		if ((int3 >= 15)) {
			int3 = 15;
		}
		while ((int4 <= int3)) {
			sub8(("Spawn Gizka " + IntToString(int3)), 7, 7, 1.0);
			(int4++);
			{
				location location1;
				if ((int1 < 10)) {
				location1 = GetLocation(GetObjectByTag((("wp_Gizka_" + "0") + IntToString(int4)), 0));
				}
				else {
				location1 = GetLocation(GetObjectByTag(("wp_Gizka_" + IntToString(int4)), 0));
				}
				CreateObject(1, "g_gizka016", location1, 0);
			}
		}
	}
	DelayCommand(0.2, DestroyObject(GetObjectByTag("Sasha", 0), 0.0, 0, 0.0));
	DelayCommand(0.2, DestroyObject(GetObjectByTag("LurArka", 0), 0.0, 0, 0.0));
	if (((GetGlobalNumber("Ebo_Sasha_State") >= 40) && (GetGlobalNumber("Ebo_Sasha_State") < 99))) {
		DelayCommand(0.5, sub9(1, "Sasha", GetLocation(GetObjectByTag("SashaSpawn", 0))));
	}
	if ((GetGlobalNumber("EBO_LURARKA") == 4)) {
		NoClicksFor(0.7);
		DelayCommand(0.5, sub9(1, "LurArka", GetLocation(GetObjectByTag("SashaSpawn", 0))));
		DelayCommand(0.6, AssignCommand(GetObjectByTag("LurArka", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0)));
	}
	int nGlobal = GetGlobalNumber("EBO_MYSTERY_BOX");
	object oEBO_MysteryBox = GetObjectByTag("EBO_MysteryBox", 0);
	if (((nGlobal == 5) && (!GetIsObjectValid(oEBO_MysteryBox)))) {
		object oEBO_MYSTERY_SPAWN = GetWaypointByTag("EBO_MYSTERY_SPAWN");
		location location6 = GetLocation(oEBO_MYSTERY_SPAWN);
		DelayCommand(0.5, sub9(64, "g_pebn_mystery", location6));
	}
	else {
		if (((nGlobal == 99) && GetIsObjectValid(oEBO_MysteryBox))) {
			DestroyObject(oEBO_MysteryBox, 0.0, 0, 0.0);
		}
	}
}

void sub6(object objectParam1) {
	ApplyEffectToObject(0, EffectHeal(500), objectParam1, 0.0);
	ApplyEffectToObject(0, EffectHealForcePoints(500), objectParam1, 0.0);
}

void sub5() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oCand = GetObjectByTag("cand", 0);
	object oHk47 = GetObjectByTag("hk47", 0);
	object oJolee = GetObjectByTag("jolee", 0);
	object oJuhani = GetObjectByTag("juhani", 0);
	object oMission = GetObjectByTag("mission", 0);
	object oT3m4 = GetObjectByTag("t3m4", 0);
	object oZaalbar = GetObjectByTag("zaalbar", 0);
	object object19;
	int int1 = 1;
	while ((int1 <= 9)) {
		if ((int1 == 1)) {
			object19 = oBastila;
		}
		if ((int1 == 2)) {
			object19 = oCarth;
		}
		if ((int1 == 3)) {
			object19 = oCand;
		}
		if ((int1 == 4)) {
			object19 = oHk47;
		}
		if ((int1 == 5)) {
			object19 = oJolee;
		}
		if ((int1 == 6)) {
			object19 = oJuhani;
		}
		if ((int1 == 7)) {
			object19 = oMission;
		}
		if ((int1 == 8)) {
			object19 = oT3m4;
		}
		if ((int1 == 9)) {
			object19 = oZaalbar;
		}
		if (GetIsObjectValid(object19)) {
			sub6(object19);
		}
		(int1++);
	}
	sub6(GetFirstPC());
}

void sub4(int intParam1, location locationParam2) {
	object object1 = SpawnAvailableNPC(intParam1, locationParam2);
}

void sub3() {
	object oZaalbar = GetObjectByTag("bastila", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("cand", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("carth", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("hk47", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("jolee", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("juhani", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("mission", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("t3m4", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("zaalbar", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
}

void sub2() {
	int int1;
	int1;
	while ((int1 <= 8)) {
		if (IsNPCPartyMember(int1)) {
			RemovePartyMember(int1);
		}
		(int1++);
	}
}

void sub1(string stringParam1) {
	if ((!ShipBuild())) {
		PrintString(stringParam1);
	}
}

void main() {
	sub1("Run enter script");
	location location1;
	object oPebn_zaalbar;
	object oZaalbar;
	int int1 = 0;
	sub2();
	DelayCommand(0.2, sub3());
	SetGlobalBoolean("K_AT_EBON_HAWK", 1);
	if ((IsAvailableCreature(0) && (GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == 0))) {
		oZaalbar = GetObjectByTag("bastila", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_bastila");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(0, location1));
			DelayCommand(2.0, SaveNPCState(0));
		}
	}
	if (IsAvailableCreature(1)) {
		oZaalbar = GetObjectByTag("cand", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_canderous");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(1, location1));
			DelayCommand(2.0, SaveNPCState(1));
		}
	}
	if ((IsAvailableCreature(2) && (GetGlobalBoolean("DAN_CARTH_AT_JEDI") == 0))) {
		oZaalbar = GetObjectByTag("carth", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_carth");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(2, location1));
			DelayCommand(2.0, SaveNPCState(2));
		}
	}
	if (IsAvailableCreature(3)) {
		oZaalbar = GetObjectByTag("hk47", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_hk47");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(3, location1));
			DelayCommand(2.0, SaveNPCState(3));
		}
	}
	if (IsAvailableCreature(4)) {
		oZaalbar = GetObjectByTag("jolee", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_jolee");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(4, location1));
			DelayCommand(2.0, SaveNPCState(4));
		}
	}
	if (IsAvailableCreature(5)) {
		oZaalbar = GetObjectByTag("juhani", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_juhani");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(5, location1));
			DelayCommand(1.0, ClearAllEffects());
		}
	}
	if (IsAvailableCreature(6)) {
		oZaalbar = GetObjectByTag("mission", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_mission");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(6, location1));
			DelayCommand(2.0, SaveNPCState(6));
		}
	}
	if (IsAvailableCreature(7)) {
		oZaalbar = GetObjectByTag("t3m4", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_t3m4");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(7, location1));
			DelayCommand(2.0, SaveNPCState(7));
		}
	}
	if ((IsAvailableCreature(8) && (GetGlobalBoolean("tat_ZaalbarTaken") == 0))) {
		oZaalbar = GetObjectByTag("zaalbar", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_zaalbar");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub4(8, location1));
			DelayCommand(2.0, SaveNPCState(8));
		}
	}
	DelayCommand(1.0, sub5());
	SetGlobalNumber("K_SWG_BASTILA_LEVEL", 0);
	SetGlobalNumber("K_SWG_JOLEE_LEVEL", 0);
	SetGlobalNumber("K_SWG_CARTH_LEVEL", 0);
	if ((GetLoadFromSaveGame() == 0)) {
		sub7();
	}
}

