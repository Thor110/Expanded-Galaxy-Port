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

void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		if (GetGlobalBoolean("STA_MALAK_DEAD")) {
			object oSta_Jedi001 = GetObjectByTag("sta_Jedi001", 0);
			object oSta_Jedi002 = GetObjectByTag("sta_Jedi002", 0);
			object oSta_Jedi003 = GetObjectByTag("sta_Jedi003", 0);
			object oSta_Jedi004 = GetObjectByTag("sta_Jedi004", 0);
			object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
			object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
			object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
			object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
			if (GetIsObjectValid(oSta_Jedi001)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi001, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta_Jedi002)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi002, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta_Jedi003)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi003, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta_Jedi004)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi004, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith01)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith01, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith02)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith02, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith03)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith03, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith04)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith04, 0.0, 0, 0.0));
			}
			object oSta_door_end45a = GetObjectByTag("sta_door_end45a", 0);
			AssignCommand(oSta_door_end45a, ActionCloseDoor(oSta_door_end45a));
			SetLocked(oSta_door_end45a, 1);
			object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
			SetLocked(oSta45a_sta45d, 0);
		}
	}
}

