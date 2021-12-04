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
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	vector vPosition = GetPosition(GetObjectByTag("Vorn", 0));
	location location1 = GetLocation(GetObjectByTag("tat_party0_final_move", 0));
	location location3 = GetLocation(GetObjectByTag("tat_party1_final_move", 0));
	location location5 = GetLocation(GetObjectByTag("tat_party2_final_move", 0));
	sub1(3.0);
	SetLockOrientationInDialog(GetObjectByTag("Vorn", 0), 0);
	AssignCommand(oNPC, ActionMoveToLocation(location3, 0));
	DelayCommand(0.4, AssignCommand(oPC, ActionMoveToLocation(location1, 0)));
	DelayCommand(0.8, AssignCommand(object5, ActionMoveToLocation(location5, 0)));
	DelayCommand(4.2, AssignCommand(oNPC, SetFacingPoint(vPosition)));
	DelayCommand(4.4, AssignCommand(oPC, ClearAllActions()));
	DelayCommand(5.5, AssignCommand(object5, SetFacingPoint(vPosition)));
	DelayCommand(4.1, AssignCommand(GetObjectByTag("vornsdroid2", 0), SetFacingPoint(GetPosition(oPC))));
}

