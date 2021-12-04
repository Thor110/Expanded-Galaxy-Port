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
	object oPC = GetFirstPC();
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	object oSta_way_pcend = GetObjectByTag("sta_way_pcend", 0);
	SetLockOrientationInDialog(oPC, 1);
	AssignCommand(oPC, SetFacing(GetFacing(oSta_way_pcend)));
	sub1(4.2);
	ChangeToStandardFaction(oSta_carth, 4);
	AssignCommand(oSta_bastila, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oSta_bastila, CutsceneAttack(oSta_carth, 156, 1, 500)));
	DelayCommand(0.7, SetDialogPlaceableCamera(34));
	DelayCommand(1.3199999, SetDialogPlaceableCamera(33));
}

