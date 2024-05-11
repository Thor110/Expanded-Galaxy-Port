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
int sub1(int intParam1, int intParam2);

int sub1(int intParam1, int intParam2) {
	float float1 = IntToFloat(GetSkillRank(intParam2, GetPartyMemberByIndex(0)));
	int int2;
	float1 = (float1 / 4.0);
	int2 = (intParam1 - FloatToInt(float1));
	if ((int2 < 1)) {
		if ((int2 <= (-3))) {
			int2 = 0;
		}
		else {
			int2 = 1;
		}
	}
	return int2;
}

int StartingConditional() {
	int int1 = 3;
	int int2 = 5;
	int int3 = 8;
	int int4 = 10;
	int int5 = 2;
	int int6 = 20;
	int int7 = 1;
	int int8 = 4;
	int int9 = 4;
	int int10 = 5;
	int int11 = 6;
	SetCustomToken(31, IntToString(sub1(3, 0)));
	SetCustomToken(32, IntToString(sub1(5, 0)));
	SetCustomToken(33, IntToString(sub1(8, 0)));
	SetCustomToken(34, IntToString(sub1(10, 0)));
	SetCustomToken(35, IntToString(sub1(2, 0)));
	SetCustomToken(36, IntToString(sub1(20, 0)));
	SetCustomToken(41, IntToString(sub1(1, 5)));
	SetCustomToken(42, IntToString(sub1(4, 5)));
	SetCustomToken(43, IntToString(sub1(4, 5)));
	SetCustomToken(44, IntToString(sub1(5, 5)));
	SetCustomToken(45, IntToString(sub1(6, 5)));
	return 1;
}

