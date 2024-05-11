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
	float floatGLOB_1 = 51.870598;
	float floatGLOB_2 = 161.5981;
	float floatGLOB_3 = 15.0;
	float floatGLOB_4 = 51.9771;
	float floatGLOB_5 = 164.281;
	float floatGLOB_6 = 15.0;
	float floatGLOB_7 = 52.215;
	float floatGLOB_8 = 167.57932;
	float floatGLOB_9 = 15.0;
	float floatGLOB_10 = 0.0;
	int intGLOB_28 = 201;
	int intGLOB_29 = 200;

// Prototypes
int sub9();
int sub8();
int sub7();
void sub6(int intParam1);
void sub5(int intParam1);
void sub4(int intParam1);
void sub3(int intParam1);
void sub2(int intParam1);
int sub1();

int sub9() {
	return GetGlobalNumber("KOR_PILLARR");
}

int sub8() {
	return GetGlobalNumber("KOR_PILLARM");
}

int sub7() {
	return GetGlobalNumber("KOR_PILLARL");
}

void sub6(int intParam1) {
	int int1;
	string string1;
	if ((intParam1 == 10)) {
		int1 = sub7();
	}
	else {
		if ((intParam1 == 11)) {
			int1 = sub8();
		}
		else {
			if ((intParam1 == 12)) {
				int1 = sub9();
			}
		}
	}
	switch (int1) {
		case 0:
			string1 = "No systems active";
			break;
		case 1:
			string1 = "Top System";
			break;
		case 3:
			string1 = "Mid-Upper System";
			break;
		case 4:
			string1 = "Mid-Upper System, Top System";
			break;
		case 7:
			string1 = "Mid-Lower System";
			break;
		case 8:
			string1 = "Mid-Lower System, Top System";
			break;
		case 10:
			string1 = "Mid-Lower System, Mid-Upper System";
			break;
		case 11:
			string1 = "Mid-Lower System, Mid-Upper System, Top System";
			break;
		case 13:
			string1 = "Base System";
			break;
		case 14:
			string1 = "Base System, Top System";
			break;
		case 16:
			string1 = "Base System, Mid-Upper System";
			break;
		case 17:
			string1 = "Base System, Mid-Upper System, Top System";
			break;
		case 20:
			string1 = "Base System, Mid-Lower System";
			break;
		case 21:
			string1 = "Base System, Mid-Lower System, Top System";
			break;
		case 23:
			string1 = "Base System, Mid-Lower System, Mid-Upper System";
			break;
		case 24:
			string1 = "Base System, Mid-Lower System, Mid-Upper System, Top System";
			break;
	}
	SetCustomToken(intParam1, string1);
}

void sub5(int intParam1) {
	SetGlobalBoolean("KOR_PILLAR_START", intParam1);
}

void sub4(int intParam1) {
	SetGlobalNumber("KOR_PILLARR", intParam1);
}

void sub3(int intParam1) {
	SetGlobalNumber("KOR_PILLARM", intParam1);
}

void sub2(int intParam1) {
	SetGlobalNumber("KOR_PILLARL", intParam1);
}

int sub1() {
	return GetGlobalBoolean("KOR_PILLAR_START");
}

void main() {
	int int1;
	if ((sub1() == 0)) {
		sub2(24);
		sub3(0);
		sub4(0);
		sub5(1);
	}
	sub6(10);
	sub6(11);
	sub6(12);
}

