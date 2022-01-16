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
int sub1(int intParam1, int intParam2, object objectParam3);

int sub1(int intParam1, int intParam2, object objectParam3) {
	int int1 = GetSkillRank(intParam2, objectParam3);
	int int3;
	int nRandom = d100(1);
	int3 = (GetHitDice(objectParam3) + 5);
	float float1 = IntToFloat(int3);
	float float3 = IntToFloat(int1);
	float float5 = (float3 / float1);
	AurPostString(("Skill Percentage Chance = " + FloatToString(float5, 4, 2)), 5, 5, 3.0);
	AurPostString(("Percentage Die Roll     = " + IntToString(nRandom)), 5, 7, 3.0);
	if ((float5 <= 0.25)) {
		if (((intParam1 == 0) && (nRandom <= 40))) {
			return 1;
		}
	}
	else {
		if (((float5 > 0.25) && (float5 <= 0.5))) {
			if (((intParam1 == 0) && (nRandom <= 50))) {
				return 1;
			}
			if (((intParam1 == 1) && (nRandom <= 25))) {
				return 1;
			}
		}
		else {
			if (((float5 > 0.5) && (float5 <= 0.75))) {
				if (((intParam1 == 0) && (nRandom <= 75))) {
					return 1;
				}
				if (((intParam1 == 1) && (nRandom <= 50))) {
					return 1;
				}
				if (((intParam1 == 2) && (nRandom <= 25))) {
					return 1;
				}
			}
			else {
				if (((float5 > 0.75) && (float5 <= 1.0))) {
					if (((intParam1 == 0) && (nRandom <= 100))) {
						return 1;
					}
					if (((intParam1 == 1) && (nRandom <= 100))) {
						return 1;
					}
					if (((intParam1 == 2) && (nRandom <= 75))) {
						return 1;
					}
				}
				else {
					if ((float5 > 1.0)) {
						return 1;
					}
				}
			}
		}
	}
	return 0;
}

int StartingConditional() {
	if (sub1(1, 0, GetPCSpeaker())) {
		return 1;
	}
	return 0;
}

