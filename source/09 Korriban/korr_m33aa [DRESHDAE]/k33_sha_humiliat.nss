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
	SetGlobalNumber("KOR33_SHAARDAN", intParam1);
}

void main() {
	sub1(2);
	object oK33_shastudent1 = GetObjectByTag("k33_shastudent1", 0);
	object oK33_shastudent2 = GetObjectByTag("k33_shastudent2", 0);
	object oK33_shastudent3 = GetObjectByTag("k33_shastudent3", 0);
	object oK33a_way_shavic = GetObjectByTag("k33a_way_shavic", 0);
	object oK33a_way_shaarda = GetObjectByTag("k33a_way_shaarda", 0);
	ActionPauseConversation();
	AssignCommand(oK33_shastudent2, ActionMoveToObject(oK33a_way_shavic, 1, 1.0));
	AssignCommand(oK33_shastudent3, ActionMoveToObject(oK33a_way_shavic, 1, 1.0));
	AssignCommand(oK33_shastudent1, ActionMoveToObject(oK33a_way_shavic, 1, 1.0));
	ActionPlayAnimation(107, 1.0, 0.0);
	ActionMoveToObject(oK33a_way_shaarda, 0, 1.0);
	ActionResumeConversation();
}

