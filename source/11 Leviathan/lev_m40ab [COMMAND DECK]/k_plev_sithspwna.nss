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
void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub3(object objectParam1);
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub3(object objectParam1) {
	sub4(("MOVING OUT - " + GetTag(objectParam1)), 5, 5, 5.0);
	ClearAllActions();
	ActionMoveToLocation(GetLocation(objectParam1), 1);
}

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oNearestLev40_wpsithspawna = GetNearestObjectByTag("lev40_wpsithspawna", OBJECT_SELF, 1);
	object oG_sithtroop06;
	object oEntering = GetEnteringObject();
	object object6 = OBJECT_SELF;
	if ((((!sub1(OBJECT_SELF)) && GetGlobalBoolean("LEV_SAULDEAD")) && GetIsPC(oEntering))) {
		sub2(OBJECT_SELF, 1);
		oG_sithtroop06 = CreateObject(1, "g_sithtroop06", GetLocation(oNearestLev40_wpsithspawna), 0);
		AssignCommand(oG_sithtroop06, sub3(oEntering));
	}
}

