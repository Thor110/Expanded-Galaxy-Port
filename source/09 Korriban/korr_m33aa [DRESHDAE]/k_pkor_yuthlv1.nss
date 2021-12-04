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
void sub1(int intParam1);

void sub1(int intParam1) {
	SetGlobalNumber("KOR_YUTHURA1", intParam1);
}

void main() {
	sub1(3);
	object oK33_WAY_K35 = GetObjectByTag("K33_WAY_K35", 0);
	object oK33_WAY_SITH2 = GetObjectByTag("K33_WAY_SITH2", 0);
	object oK33_way_yuthuraexit = GetObjectByTag("k33_way_yuthuraexit", 0);
	location location1 = GetLocation(oK33_WAY_K35);
	location location3 = GetLocation(oK33_WAY_SITH2);
	CreateObject(1, "k33_cre_sithgrd", location1, 0);
	CreateObject(1, "k33_cre_sithgrd", location3, 0);
	ActionMoveToObject(oK33_way_yuthuraexit, 0, 1.0);
	DelayCommand(12.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
}

