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
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oVorn = GetObjectByTag("Vorn", 0);
	object oVornsdroid2 = GetObjectByTag("vornsdroid2", 0);
	location location1 = GetLocation(GetObjectByTag("tat_vorn_move2", 0));
	location location3 = GetLocation(GetObjectByTag("tat_droid_move2", 0));
	sub1(4.6);
	DestroyObject(GetObjectByTag("tat_invis_conv1", 0), 0.0, 0, 0.0);
	SetLockOrientationInDialog(oVorn, 0);
	AssignCommand(oVorn, ActionMoveToLocation(location1, 1));
	DelayCommand(0.5, AssignCommand(oVornsdroid2, ActionMoveToLocation(location3, 1)));
	DelayCommand(4.0, AssignCommand(oVorn, SetFacingPoint(GetPosition(GetFirstPC()))));
	DelayCommand(5.0, AssignCommand(oVornsdroid2, SetFacingPoint(GetPosition(GetFirstPC()))));
}

