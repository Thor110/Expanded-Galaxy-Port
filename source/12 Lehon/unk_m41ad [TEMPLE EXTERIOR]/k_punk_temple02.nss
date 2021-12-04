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
	object oUnk41_rakguide2 = GetObjectByTag("unk41_rakguide2", 0);
	object oUnk41_rakguide3 = GetObjectByTag("unk41_rakguide3", 0);
	object oUnk41_rakguide4 = GetObjectByTag("unk41_rakguide4", 0);
	object oUnk41_rakguide5 = GetObjectByTag("unk41_rakguide5", 0);
	sub1(11.0);
	SetFacingPoint(GetPosition(GetObjectByTag("unk41_wpguide", 0)));
	PlayAnimation(4, 1.0, 11.1);
	DelayCommand(0.5, AssignCommand(oUnk41_rakguide2, PlayAnimation(4, 1.0, 11.0)));
	DelayCommand(0.8, AssignCommand(oUnk41_rakguide4, PlayAnimation(4, 1.0, 11.2)));
	DelayCommand(1.2, AssignCommand(oUnk41_rakguide5, PlayAnimation(4, 1.0, 11.0)));
	DelayCommand(1.5, AssignCommand(oUnk41_rakguide3, PlayAnimation(4, 1.0, 11.5)));
	SpawnAvailableNPC(4, GetLocation(GetObjectByTag("unk41_wpjolee", 0)));
	if ((GetGlobalNumber("DAN_JUHANI_PLOT") != 2)) {
		SpawnAvailableNPC(5, GetLocation(GetObjectByTag("unk41_wpjuhani", 0)));
	}
}

