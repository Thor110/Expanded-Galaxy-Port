// Globals
	int intGLOB_1 = 3;
	int intGLOB_2 = 4;
	int intGLOB_3 = 5;
	int intGLOB_4 = 6;
	int intGLOB_5 = 1;
	int intGLOB_6 = 2;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 12;
	int intGLOB_17 = 13;
	int intGLOB_18 = 14;
	int intGLOB_19 = 15;
	int intGLOB_20 = 16;
	int intGLOB_21 = 17;
	int intGLOB_22 = 18;
	int intGLOB_23 = 19;
	int intGLOB_24 = 20;
	int intGLOB_25 = 21;
	int intGLOB_26 = 22;
	int intGLOB_27 = 23;
	int intGLOB_28 = 24;
	int intGLOB_29 = 25;
	int intGLOB_30 = 26;
	int intGLOB_31 = 27;
	int intGLOB_32 = 28;
	int intGLOB_33 = 29;
	int intGLOB_34 = 59;
	int intGLOB_35 = 0;
	int intGLOB_36 = 1;
	int intGLOB_37 = 2;
	int intGLOB_38 = 34;
	int intGLOB_39 = 35;
	int intGLOB_40 = 36;
	int intGLOB_41 = 37;
	int intGLOB_42 = 38;
	int intGLOB_43 = 39;
	int intGLOB_44 = 41;
	int intGLOB_45 = 42;
	int intGLOB_46 = 46;
	int intGLOB_47 = 47;
	int intGLOB_48;
	int intGLOB_49;
	int intGLOB_50;
	object objectGLOB_1;
	int intGLOB_51;
	int intGLOB_52;
	int intGLOB_53;
	int intGLOB_54;
	int intGLOB_55;
	int intGLOB_56 = 1;
	int intGLOB_57 = 2;
	int intGLOB_58 = 3;
	int intGLOB_59 = 20;
	int intGLOB_60 = 21;
	int intGLOB_61 = 22;
	int intGLOB_62 = 23;
	int intGLOB_63 = 24;
	int intGLOB_64 = 25;
	int intGLOB_65 = 26;
	int intGLOB_66 = 27;
	int intGLOB_67 = 28;
	int intGLOB_68 = 29;
	int intGLOB_69 = 30;
	int intGLOB_70 = 31;
	int intGLOB_71 = 32;
	int intGLOB_72 = 33;
	int intGLOB_73 = 40;
	int intGLOB_74 = 43;
	int intGLOB_75 = 44;
	int intGLOB_76 = 45;
	int intGLOB_77 = 48;
	int intGLOB_78 = 49;
	int intGLOB_79 = 50;
	int intGLOB_80 = 51;
	int intGLOB_81 = 52;
	int intGLOB_82 = 53;
	int intGLOB_83 = 54;
	int intGLOB_84 = 55;
	int intGLOB_85 = 56;
	int intGLOB_86 = 57;
	int intGLOB_87 = 58;
	int intGLOB_88 = 60;
	int intGLOB_89 = 61;
	int intGLOB_90 = 62;
	int intGLOB_91 = 63;
	int intGLOB_92 = 1;
	int intGLOB_93 = 2;
	int intGLOB_94 = 3;
	int intGLOB_95 = 4;
	int intGLOB_96 = 0;
	int intGLOB_97 = 1;
	int intGLOB_98 = 2;
	int intGLOB_99 = 3;
	int intGLOB_100 = 4;
	int intGLOB_101 = 5;
	int intGLOB_102 = 6;
	int intGLOB_103 = 7;
	int intGLOB_104 = 8;
	int intGLOB_105 = 9;
	int intGLOB_106 = 10;
	int intGLOB_107 = 11;
	int intGLOB_108 = 12;
	int intGLOB_109 = 13;
	int intGLOB_110 = 14;
	int intGLOB_111 = 15;
	int intGLOB_112 = 16;
	int intGLOB_113 = 17;
	int intGLOB_114 = 18;
	int intGLOB_115 = 19;
	int intGLOB_116 = 1100;

// Prototypes
int sub7(int intParam1, int intParam2);
int sub6(int intParam1);
void sub5();
void sub4();
void sub3();
void sub2(int intParam1);
void sub1(int intParam1, int intParam2);

int sub7(int intParam1, int intParam2) {
	int int1;
	int int2 = sub6(intGLOB_44);
	if (((intParam1 == intParam2) && (int2 == 0))) {
		int1 = (-1);
		sub1(intGLOB_44, 1);
	}
	else {
		if (((intParam2 == 1) && (int2 == 1))) {
			int1 = 1;
			sub1(intGLOB_44, 0);
		}
		else {
			if ((int2 == 0)) {
				int1 = 1;
			}
			else {
				if ((int2 == 1)) {
					int1 = (-1);
				}
			}
		}
	}
	return int1;
}

int sub6(int intParam1) {
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, intParam1);
	if ((nLocalBool > 0)) {
		return 1;
	}
	return 0;
}

void sub5() {
	if ((!sub6(intGLOB_45))) {
		string string1 = "POST_";
		string string2 = "WP_";
		string string3;
		int nLocal = GetLocalNumber(OBJECT_SELF, intGLOB_35);
		int int4 = GetLocalNumber(OBJECT_SELF, intGLOB_36);
		int int6 = GetLocalNumber(OBJECT_SELF, intGLOB_37);
		if (((nLocal < 10) && (nLocal > 0))) {
			string3 = ("0" + IntToString(nLocal));
		}
		else {
			if ((nLocal == 0)) {
				if (sub6(intGLOB_42)) {
					nLocal = (Random(int4) + 1);
					if ((nLocal < 10)) {
						string3 = ("0" + IntToString(nLocal));
					}
					else {
						string3 = IntToString(nLocal);
					}
				}
				else {
					string3 = "01";
				}
			}
			else {
				if ((nLocal < 10)) {
					string3 = ("0" + IntToString(nLocal));
				}
				else {
					string3 = IntToString(nLocal);
				}
			}
		}
		string string9;
		string string10;
		if ((int6 > 0)) {
			string string11;
			if ((int6 < 10)) {
				string11 = ("0" + IntToString(int6));
			}
			else {
				string11 = IntToString(int6);
			}
			string10 = ((string2 + string11) + "_02");
		}
		else {
			string10 = ((string2 + GetTag(OBJECT_SELF)) + "_02");
		}
		object oWP = GetWaypointByTag(string10);
		if (((int4 == 0) && GetIsObjectValid(oWP))) {
		}
		if (GetIsObjectValid(oWP)) {
			int nLen = GetStringLength(string10);
			string9 = (GetStringLeft(string10, (nLen - 2)) + string3);
		}
		else {
			string2 = "UNKNOWN";
			string9 = (string1 + GetTag(OBJECT_SELF));
		}
		PrintString(("GENERIC DEBUG *************** Move to Post Marked as " + string9));
		object object3 = GetWaypointByTag(string9);
		int int14 = sub6(intGLOB_43);
		if ((GetDistanceToObject2D(object3) <= 2.5)) {
			int int16;
			if (sub6(intGLOB_42)) {
				nLocal = (Random(int4) + 1);
			}
			else {
				if (((nLocal < int4) && (!sub6(intGLOB_42)))) {
					int16 = sub7(int4, nLocal);
					nLocal = (nLocal + int16);
				}
				else {
					if ((nLocal == int4)) {
						int16 = sub7(int4, nLocal);
						if (sub6(intGLOB_38)) {
							sub1(intGLOB_45, 1);
						}
						else {
							if (sub6(intGLOB_39)) {
								nLocal = 1;
								sub1(intGLOB_44, 0);
							}
							else {
								nLocal = (nLocal + int16);
							}
						}
					}
				}
			}
		}
		if (GetIsObjectValid(GetWaypointByTag(string9))) {
			ClearAllActions();
			object3 = GetWaypointByTag(string9);
			float float2 = (GetDistanceBetween2D(GetWaypointByTag(string9), OBJECT_SELF) / 1.5);
			if ((float2 < 30.0)) {
				float2 = 30.0;
			}
			ActionForceMoveToObject(object3, sub6(intGLOB_43), 2.5, 200.0);
			SetLocalNumber(OBJECT_SELF, intGLOB_35, nLocal);
			int nRandom;
			if (sub6(intGLOB_41)) {
				nRandom = d3(1);
				ActionWait(IntToFloat(nRandom));
			}
			else {
				if (sub6(intGLOB_46)) {
					nRandom = (d6(1) + 6);
					ActionWait(IntToFloat(nRandom));
				}
				else {
					if (sub6(intGLOB_47)) {
						nRandom = d12(1);
						ActionWait(IntToFloat(nRandom));
					}
				}
			}
			if ((string2 != "UNKNOWN")) {
				ActionDoCommand(sub5());
			}
		}
	}
}

void sub4() {
	string string1;
	int nLocal = GetLocalNumber(OBJECT_SELF, intGLOB_37);
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
		SetLocalNumber(OBJECT_SELF, intGLOB_36, int3);
	}
}

void sub3() {
	SetListening(OBJECT_SELF, 1);
	SetListenPattern(OBJECT_SELF, "GEN_I_WAS_ATTACKED", 1);
	SetListenPattern(OBJECT_SELF, "GEN_I_AM_DEAD", 3);
	SetListenPattern(OBJECT_SELF, "GEN_CALL_TO_ARMS", 6);
	if ((GetHasSpell(48, OBJECT_SELF) || GetHasSpell(19, OBJECT_SELF))) {
		SetListenPattern(OBJECT_SELF, "GEN_SUPRESS_FORCE", 9);
	}
	SetListenPattern(OBJECT_SELF, "GEN_GRENADE_TOSSED", 12);
	SetListenPattern(OBJECT_SELF, "GEN_I_SEE_AN_ENEMY", 15);
	sub4();
}

void sub2(int intParam1) {
	SetLocalNumber(OBJECT_SELF, intGLOB_37, intParam1);
}

void sub1(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void main() {
	ChangeToStandardFaction(OBJECT_SELF, 2);
	sub1(intGLOB_39, 1);
	sub2(2);
	sub3();
	sub5();
}

