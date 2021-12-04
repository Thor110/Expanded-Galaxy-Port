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
void sub4(object objectParam1, int intParam2);
void sub3();
int sub2(object objectParam1);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub4(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

void sub3() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	int int3 = GetGlobalNumber("Ebon_Vision");
	int int5 = 0;
	if (((((((nGlobal == 15) || (nGlobal == 20)) || (nGlobal == 25)) || (nGlobal == 30)) || (nGlobal == 35)) && (int3 != 99))) {
		object oNearestBastila = GetNearestObjectByTag("Bastila", OBJECT_SELF, 1);
		if (GetIsObjectValid(oNearestBastila)) {
			if (((nGlobal == 15) && (!GetGlobalBoolean("k_vis_dantooine")))) {
				int5 = 1;
				SetGlobalBoolean("k_vis_dantooine", 1);
			}
			else {
				if (((nGlobal == 20) && (!GetGlobalBoolean("k_vis_kashyyyk")))) {
					int5 = 1;
					SetGlobalBoolean("k_vis_kashyyyk", 1);
				}
				else {
					if (((nGlobal == 25) && (!GetGlobalBoolean("k_vis_manaan")))) {
						int5 = 1;
						SetGlobalBoolean("k_vis_manaan", 1);
					}
					else {
						if (((nGlobal == 30) && (!GetGlobalBoolean("k_vis_korriban")))) {
							int5 = 1;
							SetGlobalBoolean("k_vis_korriban", 1);
						}
						else {
							if (((nGlobal == 35) && (!GetGlobalBoolean("k_vis_tatooine")))) {
								int5 = 1;
								SetGlobalBoolean("k_vis_tatooine", 1);
							}
						}
					}
				}
			}
			if ((int5 == 1)) {
				object oPC = GetFirstPC();
				AssignCommand(oNearestBastila, ActionStartConversation(oPC, "ebo_bast_vision", 0, 0, 1, "", "", "", "", "", ""));
			}
		}
	}
}

int sub2(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	sub1("Bastila Talk Script Firing", 10, 10, 4.0);
	int nGlobal = GetGlobalNumber("K_SWG_BASTILA");
	int int3 = GetGlobalNumber("K_STAR_MAP");
	object oBastila = GetObjectByTag("Bastila", 0);
	object oEntering = GetEnteringObject();
	int int5 = sub2(OBJECT_SELF);
	DelayCommand(2.0, sub3());
	if ((((nGlobal < 4) && (int3 == 30)) || ((nGlobal < 6) && (int3 == 40)))) {
		if ((GetIsPC(oEntering) && (int5 == 0))) {
			AssignCommand(oBastila, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", ""));
			SetGlobalNumber("Ebn_Bast_ForceTalk", 1);
		}
	}
	if ((((nGlobal < 6) && (int3 == 40)) && GetIsPC(oEntering))) {
		sub4(OBJECT_SELF, 1);
		SetGlobalNumber("Ebn_Bast_ForceTalk", 3);
	}
}

