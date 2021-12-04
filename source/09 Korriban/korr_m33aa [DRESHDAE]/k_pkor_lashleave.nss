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
	object oKor33_lasfriend1 = GetObjectByTag("kor33_lasfriend1", 0);
	object oKor33_lasfriend2 = GetObjectByTag("kor33_lasfriend2", 0);
	object oK33a_way_lashowe = GetObjectByTag("k33a_way_lashowe", 0);
	object oKor33_lashowe = GetObjectByTag("kor33_lashowe", 0);
	object oK33a_way_lashhn1 = GetObjectByTag("k33a_way_lashhn1", 0);
	object oK33a_way_lashhn2 = GetObjectByTag("k33a_way_lashhn2", 0);
	object oK33_way_yuthuraexit = GetObjectByTag("k33_way_yuthuraexit", 0);
	ActionPauseConversation();
	AssignCommand(oKor33_lasfriend1, ActionMoveToObject(oK33a_way_lashhn2, 0, 1.0));
	DelayCommand(0.5, ActionMoveToObject(oK33a_way_lashowe, 0, 1.0));
	DelayCommand(1.1, AssignCommand(oKor33_lasfriend2, ActionMoveToObject(oK33a_way_lashhn1, 0, 1.0)));
	DelayCommand(5.5, ClearAllActions());
	DelayCommand(5.6, ActionResumeConversation());
}

