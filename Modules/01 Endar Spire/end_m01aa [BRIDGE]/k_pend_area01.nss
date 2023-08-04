// Globals
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;//
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;//
	int intGLOB_14 = 13;//
	int intGLOB_15 = 14;//
	int intGLOB_16 = 15;//
	int intGLOB_17 = 16;//
	int intGLOB_18 = 17;//
	int intGLOB_19 = 18;//
	int intGLOB_20 = 19;//
	string stringGLOB_1 = "end_trask";//
	string stringGLOB_2 = "endwp_tarsk01";
	string stringGLOB_4 = "g_w_blstrrfl001";//
	string stringGLOB_5 = "g_i_adrnaline003";//
	string stringGLOB_6 = "";//
	string stringGLOB_7 = "g_w_blstrpstl001";//
	string stringGLOB_8 = "g_i_adrnaline002";//
	string stringGLOB_9 = "g_i_implant101";//
	string stringGLOB_10 = "g_w_blstrpstl001";//
	string stringGLOB_11 = "g_i_secspike01";//
	string stringGLOB_12 = "g_i_progspike01";//
	string stringGLOB_13 = "end_locker01";//
	string stringGLOB_14 = "g_i_belt010";//
// Prototypes
//object sub5();
void sub4();
void sub3(object objectParam1, int intParam2, int intParam3);
int sub2(object objectParam1, int intParam2);
int sub1();

object sub5() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void sub4() {
	object object1 = GetObjectByTag(stringGLOB_13, 0);
	int int1 = GetClassByPosition(1, GetFirstPC());
	if ((int1 == 4)) {
		CreateItemOnObject(stringGLOB_10, object1, 1);
		CreateItemOnObject(stringGLOB_11, object1, 1);
		CreateItemOnObject(stringGLOB_12, object1, 1);
	}
	else {
		if ((int1 == 5)) {
			CreateItemOnObject(stringGLOB_7, object1, 1);
			CreateItemOnObject(stringGLOB_8, object1, 1);
			CreateItemOnObject(stringGLOB_9, object1, 1);
		}
		else {
			if ((int1 == 3)) {
				CreateItemOnObject(stringGLOB_4, object1, 1);
				CreateItemOnObject(stringGLOB_5, object1, 1);
				CreateItemOnObject(stringGLOB_6, object1, 1);
			}
		}
	}
	if (GetHasSkill(2, GetFirstPC())) {
		CreateItemOnObject(stringGLOB_14, object1, 1);
	}
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
	int int1;
	if ((sub2(OBJECT_SELF, intGLOB_10) == 0)) {
		int1 = 1;
		sub3(OBJECT_SELF, intGLOB_10, 1);
	}
	return int1;
}

void main() {
	if (GetIsPC(GetEnteringObject())) {
		if (sub1()) {
      AddJournalQuestEntry("end_attack", 1, 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			PlayMovie("01A");// Movie Plays so sub1 functions
			SetReturnStrref(0, 32228, 0);
			SetGlobalNumber("K_CURRENT_PLANET", 5);// This variable wont be used
			sub4();//sets up starting gear in locker
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(3.0, 1.5, 0.0, 0.0, 0.0);
			AssignCommand(GetFirstPC(), ActionStartConversation(GetFirstPC(), "m01aa_c01", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
      SetMinOneHP(GetFirstPC(), 1);
		}
	}
}

