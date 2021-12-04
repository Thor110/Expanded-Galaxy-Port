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
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(0);
	object object7 = GetPartyMemberByIndex(1);
	object object9 = GetPartyMemberByIndex(2);
	object oKas24_joleespeak = GetObjectByTag("kas24_joleespeak", 0);
	object oKas24_joleejump1 = GetWaypointByTag("kas24_joleejump1");
	object oKas24_joleejump2 = GetWaypointByTag("kas24_joleejump2");
	object oKas24_joleejump3 = GetWaypointByTag("kas24_joleejump3");
	if (IsObjectPartyMember(oEntering)) {
		CancelCombat(oPC);
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(oNPC, JumpToObject(oKas24_joleejump1, 1));
		AssignCommand(object7, JumpToObject(oKas24_joleejump2, 1));
		AssignCommand(object9, JumpToObject(oKas24_joleejump3, 1));
		AssignCommand(oKas24_joleespeak, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
	}
}

