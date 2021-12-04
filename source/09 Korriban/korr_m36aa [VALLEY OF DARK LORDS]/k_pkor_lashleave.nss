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
void sub1();

void sub1() {
	object oK36_way_leave1 = GetObjectByTag("k36_way_leave1", 0);
	object oK36_way_leave2 = GetObjectByTag("k36_way_leave2", 0);
	object oK36_way_leave3 = GetObjectByTag("k36_way_leave3", 0);
	object oK36_way_leave4 = GetObjectByTag("k36_way_leave4", 0);
	object oK36_way_leave5 = GetObjectByTag("k36_way_leave5", 0);
	object oK36_WAY_K35 = GetObjectByTag("K36_WAY_K35", 0);
	ActionMoveToObject(oK36_way_leave1, 1, 1.0);
	ActionMoveToObject(oK36_way_leave2, 1, 1.0);
	ActionMoveToObject(oK36_way_leave3, 1, 1.0);
	ActionMoveToObject(oK36_way_leave4, 1, 1.0);
	ActionMoveToObject(oK36_way_leave5, 1, 1.0);
	ActionMoveToObject(oK36_WAY_K35, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 1, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	SetGlobalNumber("KOR_LASHOWE_PLOT", 3);
	sub1();
}

