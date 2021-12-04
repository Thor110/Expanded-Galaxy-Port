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
	int intGLOB_28 = 24;

// Prototypes
void sub6();
void sub5(int intParam1);
void sub4(int intParam1);
void sub3(object objectParam1, int intParam2, int intParam3);
int sub2(object objectParam1, int intParam2);
int sub1();

void sub6() {
	object oK37_statue = GetObjectByTag("k37_statue", 0);
	object oK37_way_statue = GetObjectByTag("k37_way_statue", 0);
	location location1 = GetLocation(oK37_way_statue);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DestroyObject(oK37_statue, 0.0, 1, 0.0);
	CreateObject(64, "k37_statuesword", location1, 0);
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}

void sub5(int intParam1) {
	sub3(OBJECT_SELF, intGLOB_2, intParam1);
}

void sub4(int intParam1) {
	sub3(OBJECT_SELF, intGLOB_1, intParam1);
}

void sub3(object objectParam1, int intParam2, int intParam3) {
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
	return sub2(OBJECT_SELF, intGLOB_2);
}

void main() {
	if ((sub1() == 0)) {
		object oK37_trg_ajunta = GetObjectByTag("k37_trg_ajunta", 0);
		sub3(oK37_trg_ajunta, intGLOB_1, 0);
		sub4(0);
		sub5(1);
		object oPC = GetFirstPC();
		object oNPC = GetPartyMemberByIndex(1);
		object object7 = GetPartyMemberByIndex(2);
		object object9 = GetItemPossessedBy(oPC, "k37_itm_freednf2");
		object object11 = GetItemPossessedBy(oNPC, "k37_itm_freednf2");
		object object13 = GetItemPossessedBy(object7, "k37_itm_freednf2");
		if (GetIsObjectValid(object9)) {
			DestroyObject(object9, 0.0, 0, 0.0);
		}
		if (GetIsObjectValid(object11)) {
			DestroyObject(object11, 0.0, 0, 0.0);
		}
		if (GetIsObjectValid(object13)) {
			DestroyObject(object13, 0.0, 0, 0.0);
		}
		SetLocked(OBJECT_SELF, 1);
		sub6();
	}
}

