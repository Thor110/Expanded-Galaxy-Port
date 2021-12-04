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
	int nGlobal = GetGlobalNumber("Lev_Escape");
	if ((1 == nGlobal)) {
		sub1("MISSION PLOT", 5, 5, 1.0);
		AssignCommand(GetObjectByTag("mission", 0), ActionJumpToObject(GetObjectByTag("lev40_spmission", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("mission", 0), ActionJumpToObject(GetObjectByTag("lev40_spmissioncell", 0), 0));
		DestroyObject(GetObjectByTag("LevGuard401", 0), 0.0, 0, 0.0);
	}
	if ((2 == nGlobal)) {
		AssignCommand(GetObjectByTag("t3m4", 0), ActionJumpToObject(GetObjectByTag("lev40_spt3m4", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("t3m4", 0), ActionJumpToObject(GetObjectByTag("lev40_spt3m4cell", 0), 0));
	}
	if ((3 == nGlobal)) {
		AssignCommand(GetObjectByTag("jolee", 0), ActionJumpToObject(GetObjectByTag("lev40_spjolee", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("jolee", 0), ActionJumpToObject(GetObjectByTag("lev40_spjoleecell", 0), 0));
		DestroyObject(GetObjectByTag("LevGuard403", 0), 0.0, 0, 0.0);
	}
	if ((4 == nGlobal)) {
		AssignCommand(GetObjectByTag("cand", 0), ActionJumpToObject(GetObjectByTag("lev40_spcand", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("cand", 0), ActionJumpToObject(GetObjectByTag("lev40_spcandcell", 0), 0));
	}
	if ((5 == nGlobal)) {
		AssignCommand(GetObjectByTag("juhani", 0), ActionJumpToObject(GetObjectByTag("lev40_spjuhani", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("juhani", 0), ActionJumpToObject(GetObjectByTag("lev40_spjuhanicell", 0), 0));
	}
	if ((6 == nGlobal)) {
		AssignCommand(GetObjectByTag("hk47", 0), ActionJumpToObject(GetObjectByTag("lev40_sphk47", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("hk47", 0), ActionJumpToObject(GetObjectByTag("lev40_sphk47cell", 0), 0));
	}
	AssignCommand(GetObjectByTag("zaalbar", 0), ActionJumpToObject(GetObjectByTag("lev40_spzaalbarcell", 0), 0));
	DestroyObject(GetObjectByTag("carth", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("bastilla", 0), 0.0, 0, 0.0);
}

