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
	sub1(5.0);
	SetFacing(GetFacing(GetObjectByTag("unk41_wpguide", 0)));
	AssignCommand(GetObjectByTag("unk41_rakguide2", 0), SetFacing(GetFacing(GetObjectByTag("unk41_wpguide2", 0))));
	AssignCommand(GetObjectByTag("unk41_rakguide3", 0), SetFacing(GetFacing(GetObjectByTag("unk41_wpguide3", 0))));
	AssignCommand(GetObjectByTag("unk41_rakguide4", 0), SetFacing(GetFacing(GetObjectByTag("unk41_wpguide4", 0))));
	AssignCommand(GetObjectByTag("unk41_rakguide5", 0), SetFacing(GetFacing(GetObjectByTag("unk41_wpguide5", 0))));
	AssignCommand(GetPCSpeaker(), JumpToLocation(GetLocation(GetObjectByTag("unk_pcjump_start", 0))));
	DelayCommand(0.2, AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("unk41_wppc", 0)), 0)));
	object oAreaObject = GetFirstObjectInArea(GetArea(GetFirstPC()), 1);
	if (GetIsObjectValid(GetObjectByTag("unk41_rakguide", 0))) {
		while ((oAreaObject != OBJECT_INVALID)) {
			if (((GetStandardFaction(oAreaObject) == 1) || (GetStandardFaction(oAreaObject) == 3))) {
				DestroyObject(oAreaObject, 0.0, 1, 0.0);
			}
			oAreaObject = GetNextObjectInArea(GetArea(GetFirstPC()), 1);
		}
	}
}

