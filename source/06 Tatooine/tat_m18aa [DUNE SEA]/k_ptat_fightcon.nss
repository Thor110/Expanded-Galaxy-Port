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
void sub2(string stringParam1, string stringParam2, int intParam3, float floatParam4, int intParam5);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub2(string stringParam1, string stringParam2, int intParam3, float floatParam4, int intParam5) {
	if ((floatParam4 < 1.5)) {
		floatParam4 = 1.5;
	}
	{
		object oWP = GetWaypointByTag(stringParam2);
		object object3;
		if (GetIsObjectValid(oWP)) {
		int int2 = intParam5;
			int2;
		while ((int2 != 0)) {
			object3 = CreateObject(1, stringParam1, GetLocation(oWP), 0);
			(int2--);
		}
			(intParam3--);
		if ((intParam3 > 0)) {
			DelayCommand(floatParam4, sub2(stringParam1, stringParam2, intParam3, floatParam4, intParam5));
		}
		floatParam4 = (floatParam4 + floatParam4);
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int nGlobal = GetGlobalNumber("PTAT_SPN_TUSKAN");
	sub1(IntToString(nGlobal), 5, 8, 2.0);
	int nLocal = GetLocalNumber(OBJECT_SELF, 2);
	int int5 = 1;
	int int6;
	if ((nGlobal < 6)) {
		object oNearestTat18_tusken09 = GetNearestObjectByTag("tat18_tusken09", OBJECT_SELF, 2);
		object object3 = GetNearestObjectByTag("tat18_tusken09", OBJECT_SELF, 3);
		if (((!GetIsObjectValid(object3)) && GetIsObjectValid(oNearestTat18_tusken09))) {
			sub2("tat18_tusken010", "pTat_Sand_Spawn", 1, 0.25, 1);
			(nGlobal++);
			sub1(IntToString(nGlobal), 5, 10, 2.0);
			SetGlobalNumber("PTAT_SPN_TUSKAN", nGlobal);
		}
		else {
			if (((!GetIsObjectValid(object3)) && (!GetIsObjectValid(oNearestTat18_tusken09)))) {
				sub2("tat18_tusken010", "pTat_Sand_Spawn", 2, 0.25, 1);
				nGlobal = (nGlobal + 2);
				sub1(IntToString(nGlobal), 5, 10, 2.0);
				SetGlobalNumber("PTAT_SPN_TUSKAN", nGlobal);
			}
		}
	}
}

