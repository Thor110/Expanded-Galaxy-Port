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
void sub1(object objectParam1, int intParam2);

void sub1(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

void main() {
	sub1(OBJECT_SELF, 1);
	if ((GetGlobalBoolean("KOR_LASHOWE_TUK") == 0)) {
		object oK36_way_tukqueen = GetObjectByTag("k36_way_tukqueen", 0);
		object oK36_way_tukhen1 = GetObjectByTag("k36_way_tukhen1", 0);
		object oK36_way_tukhen2 = GetObjectByTag("k36_way_tukhen2", 0);
		location location1 = GetLocation(oK36_way_tukqueen);
		location location3 = GetLocation(oK36_way_tukhen1);
		location location5 = GetLocation(oK36_way_tukhen2);
		CreateObject(1, "kor36_tukataquee", location1, 0);
		CreateObject(1, "kor36_tukatahen1", location3, 0);
		CreateObject(1, "kor36_tukatahen2", location5, 0);
		SetGlobalBoolean("KOR_LASHOWE_TUK", 1);
	}
}

