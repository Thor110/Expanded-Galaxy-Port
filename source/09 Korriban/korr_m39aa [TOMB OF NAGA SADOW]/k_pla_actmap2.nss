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
	AddJournalQuestEntry("kor33_findstarmap", 40, 0);
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_SWG_BASTILA");
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, intGLOB_11);
	if ((nLocalBool == 0)) {
		SetLocalBoolean(OBJECT_SELF, intGLOB_11, 1);
		nGlobal = (nGlobal + 10);
		SetGlobalNumber("K_STAR_MAP", nGlobal);
		ActionPlayAnimation(200, 1.0, 0.0);
		if ((nGlobal == 30)) {
			if ((int3 < 3)) {
				SetGlobalNumber("K_SWG_BASTILA", 99);
			}
		}
		if ((nGlobal == 40)) {
			SetGlobalNumber("K_CAPTURED_LEV", 5);
			if ((int3 < 5)) {
				SetGlobalNumber("K_SWG_BASTILA", 99);
			}
		}
		if ((nGlobal == 50)) {
			SetGlobalNumber("K_KOTOR_MASTER", 30);
		}
	}
}

