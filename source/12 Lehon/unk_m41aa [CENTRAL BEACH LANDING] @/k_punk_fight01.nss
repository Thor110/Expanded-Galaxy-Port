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
	if ((GetGlobalBoolean("UNK_THEONE") == 1)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		DestroyObject(GetObjectByTag("unk41_rancor", 0), 0.0, 1, 0.0);
		AssignCommand(GetObjectByTag("unk41_rancor2", 0), SetFacingPoint(GetPosition(GetObjectByTag("red1start", 0))));
		AssignCommand(GetObjectByTag("unk41_blackrak4", 0), SetFacingPoint(GetPosition(GetObjectByTag("red1start", 0))));
		CreateObject(1, "unk41_redrak1", GetLocation(GetObjectByTag("red1start", 0)), 0);
		CreateObject(1, "unk41_redrak2", GetLocation(GetObjectByTag("red2start", 0)), 0);
		CreateObject(1, "unk41_redrak3", GetLocation(GetObjectByTag("red3start", 0)), 0);
		AssignCommand(GetObjectByTag("unk41_redrak1", 0), SetFacingPoint(GetPosition(GetObjectByTag("unk41_rancor2", 0))));
		AssignCommand(GetObjectByTag("unk41_redrak2", 0), SetFacingPoint(GetPosition(GetObjectByTag("unk41_rancor2", 0))));
		AssignCommand(GetObjectByTag("unk41_redrak3", 0), SetFacingPoint(GetPosition(GetObjectByTag("unk41_rancor2", 0))));
		AssignCommand(GetObjectByTag("invish", 0), ActionStartConversation(GetFirstPC(), "unk41_fight", 0, 0, 0, "", "", "", "", "", ""));
		DelayCommand(0.2, DestroyObject(GetObjectByTag("fight1", 0), 0.0, 0, 0.0));
		DelayCommand(0.2, DestroyObject(GetObjectByTag("fight2", 0), 0.0, 0, 0.0));
	}
}

