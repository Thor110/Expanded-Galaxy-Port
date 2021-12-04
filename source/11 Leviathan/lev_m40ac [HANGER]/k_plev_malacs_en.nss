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
void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
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
	object oEntering = GetEnteringObject();
	object oLev40_blastdoorb = GetObjectByTag("lev40_blastdoorb", 0);
	object oAreaObject;
	object object6;
	location location1 = GetLocation(GetObjectByTag("lev_malak_spawn_wp", 0));
	int int1;
	string string1;
	if ((GetIsPC(oEntering) && (!sub1(OBJECT_SELF)))) {
		sub2(OBJECT_SELF, 1);
		if (GetIsObjectValid(oLev40_blastdoorb)) {
			sub3("FOUND DOOR...", 5, 5, 1.0);
		}
		oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
		while (GetIsObjectValid(oAreaObject)) {
			if ((GetStandardFaction(oAreaObject) == 1)) {
				DestroyObject(oAreaObject, 0.0, 1, 0.0);
			}
			oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
		}
		SetLocked(oLev40_blastdoorb, 0);
		SetPartyLeader((-1));
		AssignCommand(GetObjectByTag("lev_invis_malak_conv", 0), ActionStartConversation(OBJECT_SELF, "", 0, 0, 0, "", "", "", "", "", ""));
	}
}

