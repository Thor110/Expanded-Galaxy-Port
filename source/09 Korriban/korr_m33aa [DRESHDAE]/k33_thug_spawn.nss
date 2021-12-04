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
void sub5(object objectParam1, int intParam2, int intParam3);
void sub4(int intParam1);
int sub3();
int sub2(object objectParam1, int intParam2);
int sub1();

void sub5(object objectParam1, int intParam2, int intParam3) {
	int nLevel = GetHitDice(GetFirstPC());
	if ((intParam3 == 1)) {
		if (((((intParam2 == intGLOB_12) || (intParam2 == intGLOB_17)) || (intParam2 == intGLOB_18)) || (intParam2 == intGLOB_19))) {
			GiveXPToCreature(GetFirstPC(), (nLevel * 15));
		}
		else {
			if ((((intParam2 == intGLOB_13) || (intParam2 == intGLOB_20)) || (intParam2 == intGLOB_16))) {
				GiveXPToCreature(GetFirstPC(), (nLevel * 20));
			}
			else {
				if (((intParam2 == intGLOB_14) || (intParam2 == intGLOB_15))) {
					GiveXPToCreature(GetFirstPC(), (nLevel * 10));
				}
			}
		}
	}
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void sub4(int intParam1) {
	sub5(OBJECT_SELF, intGLOB_1, intParam1);
}

int sub3() {
	return GetGlobalBoolean("KOR33_MEDALLION");
}

int sub2(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub1() {
	return sub2(OBJECT_SELF, intGLOB_1);
}

void main() {
	object oPC = GetFirstPC();
	if ((((sub1() == 0) && (GetEnteringObject() == oPC)) && (sub3() == 1))) {
		sub4(1);
		object oK33b_way_leader = GetObjectByTag("k33b_way_leader", 0);
		object oK33b_way_thug1 = GetObjectByTag("k33b_way_thug1", 0);
		object oK33b_way_thug2 = GetObjectByTag("k33b_way_thug2", 0);
		object oK33b_way_thug3 = GetObjectByTag("k33b_way_thug3", 0);
		object oK33_way_yuthura = GetObjectByTag("k33_way_yuthura", 0);
		location location1 = GetLocation(oK33b_way_leader);
		location location3 = GetLocation(oK33b_way_thug1);
		location location5 = GetLocation(oK33b_way_thug2);
		location location7 = GetLocation(oK33b_way_thug3);
		location location9 = GetLocation(oK33_way_yuthura);
		CreateObject(1, "k33b_sththuglead", location1, 0);
		CreateObject(1, "k33b_siththug1", location3, 0);
		CreateObject(1, "k33b_siththug2", location5, 0);
		CreateObject(1, "k33b_siththug3", location7, 0);
		CreateObject(1, "kor33_yuthura", location9, 0);
	}
}

