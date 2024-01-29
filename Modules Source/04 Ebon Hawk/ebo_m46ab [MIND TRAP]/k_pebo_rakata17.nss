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

void main() {
	object oNearestBP_JUMP0_WP = GetNearestObjectByTag("BP_JUMP0_WP", OBJECT_SELF, 1);
	object oNPC = GetPartyMemberByIndex(0);
	SetGlobalBoolean("EBO_RAKATA_TALK", 1);
	AssignCommand(oNPC, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oNearestBP_JUMP0_WP))));
	DelayCommand(0.4, AssignCommand(oNPC, SetFacing(GetFacing(oNearestBP_JUMP0_WP))));
}

