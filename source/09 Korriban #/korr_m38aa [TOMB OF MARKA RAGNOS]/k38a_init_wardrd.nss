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
void sub5(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub4(object objectParam1, int intParam2, int intParam3);
void sub3(int intParam1);
int sub2(object objectParam1, int intParam2);
int sub1();

void sub5(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub4(object objectParam1, int intParam2, int intParam3) {
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

void sub3(int intParam1) {
	sub4(OBJECT_SELF, intGLOB_1, intParam1);
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
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetItemPossessedBy(oNPC, "G_I_BELT006");
	object object5 = GetItemPossessedBy(oNPC, "G_I_BELT007");
	object object7 = GetItemPossessedBy(oNPC, "G_I_BELT008");
	object object9 = GetItemPossessedBy(oNPC, "Geno_stealth");
	object oBeltItem = GetItemInSlot(10, oNPC);
	string string1 = GetTag(oBeltItem);
	object oNearestKor38a_wardroid = GetNearestObjectByTag("kor38a_wardroid", OBJECT_SELF, 1);
	if (((GetEnteringObject() == oNPC) && (sub1() == 0))) {
		if (((((string1 != GetTag(object3)) && (string1 != GetTag(object5))) && (string1 != GetTag(object7))) && (string1 != GetTag(object9)))) {
			if ((GetGlobalNumber("KOR_WAR_DEAD") < 12)) {
				AssignCommand(oNearestKor38a_wardroid, ClearAllActions());
				AssignCommand(oNPC, ClearAllActions());
				if ((d100(1) < Random(11))) {
					BarkString(OBJECT_INVALID, 15832);
				}
				else {
					if ((d100(1) < Random(22))) {
						BarkString(OBJECT_INVALID, 15833);
					}
					else {
						BarkString(OBJECT_INVALID, 15834);
					}
				}
				sub3(1);
			}
			else {
				sub5(("Variable KOR_WAR_DEAD = " + IntToString(GetGlobalNumber("KOR_WAR_DEAD"))), 10, 10, 5.0);
			}
		}
		else {
			sub5("A belt is present", 10, 10, 5.0);
		}
	}
}

