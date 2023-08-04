// Globals
	int intGLOB_11 = 7;
	int intGLOB_43 = 0;
	int intGLOB_44 = 1;
	int intGLOB_45 = 2;
	int intGLOB_46 = 29;
	int intGLOB_48 = 34;
	int intGLOB_49 = 35;
	int intGLOB_51 = 37;
	int intGLOB_52 = 38;
	int intGLOB_53 = 39;
	int intGLOB_54 = 41;
	int intGLOB_55 = 42;
	int intGLOB_56 = 46;
	int intGLOB_57 = 47;
	int intGLOB_58 = 15;
	int intGLOB_59 = 10;
	int intGLOB_60 = 5;
	int intGLOB_61 = 2;
	int intGLOB_73 = 3;
	int intGLOB_81 = 27;
	int intGLOB_112 = 71;
// Prototypes
int sub10(int intParam1);
void sub9();
void sub8();
void sub7();
void sub6();
void sub5(object objectParam1);
int sub4(object objectParam1);
void sub3();
void sub2();
void sub1(int intParam1);

int sub10(int intParam1) {
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, intParam1);
	if ((nLocalBool > 0)) {
		return 1;
	}
	return 0;
}

void sub9() {
	string string1;
	int int1 = 1;
	int nRandom = Random(6);
	switch (nRandom) {
		case 0:
			string1 = "g_i_drdrepeqp001";
			break;
		case 1:
			string1 = "g_i_credits001";
			int1 = 5;
			sub8();
			break;
		case 2:
			string1 = "g_i_credits002";
			int1 = 10;
			sub8();
			break;
		case 3:
			string1 = "g_i_credits003";
			int1 = 25;
			sub8();
			break;
		case 4:
			string1 = "g_i_medeqpmnt01";
			break;
		case 5:
			string1 = "g_w_fraggren01";
			break;
	}
	CreateItemOnObject(string1, OBJECT_SELF, int1);
}

void sub8() {
	CreateItemOnObject("g_i_credits015", OBJECT_SELF, (Random(4) + 1));
}

void sub7() {
	string string1;
	int int1 = 1;
	int nRandom = Random(15);
	switch (nRandom) {
		case 0:
			string1 = "g_i_drdrepeqp002";
			break;
		case 1:
			string1 = "g_i_credits004";
			int1 = 50;
			sub8();
			break;
		case 2:
			string1 = "g_i_medeqpmnt02";
			break;
		case 3:
			string1 = "g_i_cmbtshot001";
			break;
		case 4:
			string1 = "g_i_adrnaline003";
			break;
		case 5:
			string1 = "g_i_adrnaline002";
			break;
		case 6:
			string1 = "g_i_adrnaline001";
			break;
		case 7:
			string1 = "g_w_stungren01";
			int1 = 2;
			break;
		case 8:
			string1 = "g_w_fraggren01";
			int1 = 2;
			break;
		case 9:
			string1 = "g_w_poisngren01";
			break;
		case 10:
			string1 = "g_w_sonicgren01";
			break;
		case 11:
			string1 = "g_w_adhsvgren001";
			break;
		case 12:
			string1 = "g_w_cryobgren001";
			break;
		case 13:
			string1 = "g_w_iongren01";
			break;
	}
	CreateItemOnObject(string1, OBJECT_SELF, int1);
}

void sub6() {
	string string1;
	int int1 = 1;
	int nRandom = Random(16);
	switch (nRandom) {
		case 0:
			string1 = "g_i_drdrepeqp003";
			break;
		case 1:
			string1 = "g_w_thermldet01";
			break;
		case 2:
			string1 = "g_i_medeqpmnt03";
			break;
		case 3:
			string1 = "g_i_cmbtshot003";
			break;
		case 4:
			string1 = "g_i_cmbtshot002";
			break;
		case 5:
			string1 = "g_i_adrnaline006";
			break;
		case 6:
			string1 = "g_i_adrnaline005";
			break;
		case 7:
			string1 = "g_i_adrnaline004";
			break;
		case 8:
			string1 = "g_w_poisngren01";
			int1 = 2;
			break;
		case 9:
			string1 = "g_w_sonicgren01";
			int1 = 2;
			break;
		case 10:
			string1 = "g_w_adhsvgren001";
			int1 = 2;
			break;
		case 11:
			string1 = "g_w_cryobgren001";
			int1 = 2;
			break;
		case 12:
			string1 = "g_w_firegren001";
			int1 = 2;
			break;
		case 13:
			string1 = "g_w_iongren01";
			int1 = 2;
			break;
		case 14:
			string1 = "g_i_credits015";
			int1 = (Random(50) + 50);
			break;
		case 15:
			string1 = "g_w_firegren001";
			break;
	}
	CreateItemOnObject(string1, OBJECT_SELF, int1);
}

void sub5(object objectParam1) {
	int nLevel = GetHitDice(objectParam1);
	if ((nLevel > intGLOB_58)) {
		sub6();
		if ((Random(2) == 0)) {
			sub6();
		}
		if ((Random(2) == 0)) {
			sub7();
		}
	}
	else {
		if (((nLevel <= intGLOB_58) && (nLevel > intGLOB_59))) {
			sub7();
			if ((Random(3) == 0)) {
				sub6();
			}
			if ((Random(2) == 0)) {
				sub7();
			}
		}
		else {
			if (((nLevel <= intGLOB_59) && (nLevel > intGLOB_60))) {
				sub7();
				if ((Random(2) == 0)) {
					sub9();
				}
			}
			else {
				sub9();
				if ((Random(3) == 0)) {
					sub9();
				}
				if ((Random(4) == 0)) {
					sub7();
				}
			}
		}
	}
}

int sub4(object objectParam1) {
	int nRace = GetRacialType(objectParam1);
	int int3 = GetStandardFaction(objectParam1);
	int int5 = GetSubRace(objectParam1);
	if ((((Random(4) == 0) && (nRace != 5)) && (int5 != intGLOB_61))) {
		sub5(objectParam1);
		return 1;
	}
	return 0;
}

void sub3() {
	string string1;
	int nLocal = GetLocalNumber(OBJECT_SELF, intGLOB_45);
	if ((nLocal > 0)) {
		string string2;
		if ((nLocal < 10)) {
			string2 = ("0" + IntToString(nLocal));
		}
		else {
			string2 = IntToString(nLocal);
		}
		string1 = ("WP_" + string2);
	}
	else {
		string1 = ("WP_" + GetTag(OBJECT_SELF));
	}
	int int3 = 1;
	string string6 = (string1 + "_01");
	object oWP = GetWaypointByTag(string6);
	while (GetIsObjectValid(oWP)) {
		(int3++);
		if ((int3 < 10)) {
			string6 = ((string1 + "_0") + IntToString(int3));
		}
		else {
			string6 = ((string1 + "_") + IntToString(int3));
		}
		oWP = GetWaypointByTag(string6);
	}
	int3 = (int3 - 1);
	if ((int3 > 0)) {
		SetLocalNumber(OBJECT_SELF, intGLOB_44, int3);
	}
}

void sub2() {
	SetListening(OBJECT_SELF, 1);
	SetListenPattern(OBJECT_SELF, "GEN_I_WAS_ATTACKED", 1);
	SetListenPattern(OBJECT_SELF, "GEN_I_AM_DEAD", 3);
	SetListenPattern(OBJECT_SELF, "GEN_CALL_TO_ARMS", 6);
	if ((GetHasSpell(48, OBJECT_SELF) || GetHasSpell(19, OBJECT_SELF))) {
		SetListenPattern(OBJECT_SELF, "GEN_SUPRESS_FORCE", 9);
	}
	SetListenPattern(OBJECT_SELF, "GEN_GRENADE_TOSSED", 12);
	SetListenPattern(OBJECT_SELF, "GEN_I_SEE_AN_ENEMY", 14);
	SetListenPattern(OBJECT_SELF, "GEN_COMBAT_ACTIVE", 15);
	sub3();
	string string1 = GetTag(OBJECT_SELF);
	if (((((((((((string1 != "Carth") && (string1 != "Bastila")) && (string1 != "Cand")) && (string1 != "HK47")) && (string1 != "Jolee")) && (string1 != "Juhani")) && (string1 != "Mission")) && (string1 != "T3M4")) && (string1 != "Zaalbar")) && (!GetIsPC(OBJECT_SELF)))) {
		sub4(OBJECT_SELF);
	}
	if ((sub10(intGLOB_112) || GetIsEncounterCreature(OBJECT_SELF))) {
		string string3;
		int int7 = 1;
		object object1;
		object object2;
		float fDistance;
		float float2 = 100.0;
		int7;
		while ((int7 < 40)) {
			if ((int7 < 10)) {
				string3 = (("ZoneController" + "0") + IntToString(int7));
			}
			else {
				string3 = ("ZoneController" + IntToString(int7));
			}
			object2 = GetObjectByTag(string3, 0);
			if (GetIsObjectValid(object2)) {
				fDistance = GetDistanceBetween(OBJECT_SELF, object2);
				if ((fDistance < float2)) {
					float2 = fDistance;
					object1 = object2;
				}
			}
			(int7++);
		}
		if ((GetIsObjectValid(object1) && (float2 < 30.0))) {
			int int10 = StringToInt(GetStringRight(GetTag(object1), 2));
			SetLocalNumber(OBJECT_SELF, intGLOB_11, int10);
		}
	}
}

void sub1(int intParam1) {
}

void main() {
	sub1(intGLOB_73);
	sub2();
	DelayCommand(0.1, SignalEvent(OBJECT_SELF, EventUserDefined(10)));
}

