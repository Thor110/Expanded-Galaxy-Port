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

// Prototypes
void sub1(object objectParam1, int intParam2, int intParam3);

void sub1(object objectParam1, int intParam2, int intParam3) {
	if ((((intParam2 >= 0) && (intParam2 <= 9)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void main() {
	sub1(OBJECT_SELF, 6, 1);
	DelayCommand(1.5, ShowPartySelectionGUI("k_pebn_swoop"));
}

