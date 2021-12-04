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
void sub2(int intParam1, location locationParam2);
void sub1();

void sub2(int intParam1, location locationParam2) {
	object object1 = SpawnAvailableNPC(intParam1, locationParam2);
}

void sub1() {
	int int1;
	int1;
	while ((int1 <= 8)) {
		if (IsNPCPartyMember(int1)) {
			RemovePartyMember(int1);
		}
		(int1++);
	}
}

void main() {
	location location1;
	object oPebn_zaalbar;
	object oZaalbar;
	int int1 = 0;
	sub1();
	SetGlobalBoolean("K_AT_EBON_HAWK", 1);
	if ((IsAvailableCreature(0) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("bastila", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_bastila");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(0, location1));
		}
	}
	if ((IsAvailableCreature(2) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("carth", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_carth");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(2, location1));
		}
	}
	if ((IsAvailableCreature(1) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("cand", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_canderous");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(1, location1));
		}
	}
	if ((IsAvailableCreature(3) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("hk47", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_hk47");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(3, location1));
		}
	}
	if ((IsAvailableCreature(4) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("jolee", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_jolee");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(4, location1));
		}
	}
	if ((IsAvailableCreature(5) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("juhani", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_juhani");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(5, location1));
		}
	}
	if ((IsAvailableCreature(6) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("mission", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_mission");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(6, location1));
		}
	}
	if ((IsAvailableCreature(7) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("t3m4", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_t3m4");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(7, location1));
		}
	}
	if ((IsAvailableCreature(8) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("zaalbar", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_zaalbar");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(8, location1));
		}
	}
}

