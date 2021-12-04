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
	object oLev40_blastdoori = GetObjectByTag("lev40_blastdoord", 0);
	object oCarth = GetObjectByTag("carth", 0);
	DelayCommand(2.5, AssignCommand(oLev40_blastdoori, ActionCloseDoor(oLev40_blastdoori)));
	oLev40_blastdoori = GetObjectByTag("lev40_blastdoorf", 0);
	DelayCommand(3.0, SetLocked(oLev40_blastdoori, 0));
	oLev40_blastdoori = GetObjectByTag("lev40_blastdoorh", 0);
	AssignCommand(oLev40_blastdoori, ActionCloseDoor(oLev40_blastdoori));
	SetLocked(oLev40_blastdoori, 1);
	oLev40_blastdoori = GetObjectByTag("lev40_blastdoori", 0);
	AssignCommand(oLev40_blastdoori, ActionCloseDoor(oLev40_blastdoori));
	SetLocked(oLev40_blastdoori, 1);
	DelayCommand(2.0, AssignCommand(oCarth, ActionMoveToObject(GetFirstPC(), 1, 1.0)));
	AssignCommand(GetFirstPC(), ClearAllEffects());
	DelayCommand(5.0, AssignCommand(oCarth, ClearAllActions()));
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
	object oDarthmalak400 = GetObjectByTag("darthmalak400", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	location location1 = GetLocation(GetObjectByTag("LEV_BASTILA_ENDING", 0));
	location location3 = GetLocation(GetObjectByTag("LEV_MALAK_ENDING", 0));
	AssignCommand(oBastila, JumpToLocation(location1));
	AssignCommand(oDarthmalak400, JumpToLocation(location3));
	DelayCommand(1.3, AssignCommand(oDarthmalak400, CutsceneAttack(oBastila, 114, 1, 0)));
	DelayCommand(1.5, SetDialogPlaceableCamera(32));
}

