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
int sub7();
int sub6();
int sub5();
int sub4();
int sub3();
int sub2();
int sub1();

int sub7() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if ((nAlign >= 81)) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub6() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 61) && (nAlign < 81))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub5() {
	if ((sub6() || sub7())) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub4() {
	if (((!sub1()) && (!sub5()))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub3() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub2() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 20) && (nAlign < 40))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub1() {
	if ((sub2() || sub3())) {
		return 1;
	}
	else {
		return 0;
	}
}

int StartingConditional() {
	int int1 = (sub1() || sub4());
	return int1;
}

