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
	float floatGLOB_1 = 51.870598;
	float floatGLOB_2 = 161.5981;
	float floatGLOB_3 = 15.0;
	float floatGLOB_4 = 51.9771;
	float floatGLOB_5 = 164.281;
	float floatGLOB_6 = 15.0;
	float floatGLOB_7 = 52.215;
	float floatGLOB_8 = 167.57932;
	float floatGLOB_9 = 15.0;
	float floatGLOB_10 = 0.0;
	int intGLOB_28 = 201;
	int intGLOB_29 = 200;

// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oG_T_TRAP002 = GetObjectByTag("G_T_TRAP002", 0);
	if (GetIsObjectValid(oG_T_TRAP002)) {
		DestroyObject(oG_T_TRAP002, 0.0, 1, 0.0);
	}
	object oKor39_kor36 = GetObjectByTag("kor39_kor36", 0);
	SetLocked(oKor39_kor36, 0);
	object oKor39_dooracid = GetObjectByTag("kor39_dooracid", 0);
	SetLocked(oKor39_dooracid, 0);
	object oK39_door_starmap = GetObjectByTag("k39_door_starmap", 0);
	SetLocked(oK39_door_starmap, 0);
	object oK39_way_yuthexit = GetObjectByTag("k39_way_yuthexit", 0);
	SetGlobalNumber("KOR_FINAL_TEST", 6);
	if (GetIsObjectValid(oK39_way_yuthexit)) {
		ActionMoveToObject(oK39_way_yuthexit, 0, 1.0);
		sub1("Waypoint valid", 6, 6, 5.0);
	}
	else {
		sub1("Waypoint not valid", 6, 6, 5.0);
	}
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

