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
	sub1(2.8);
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oDan_party_move0 = GetObjectByTag("dan_party_move0", 0);
	object oDan_party_move1 = GetObjectByTag("dan_party_move1", 0);
	object oDan_party_move2 = GetObjectByTag("dan_party_move2", 0);
	location location1 = GetLocation(GetObjectByTag("dan_spawn_zuulan", 0));
	location location3 = GetLocation(GetObjectByTag("dan_spawn_droid1", 0));
	location location5 = GetLocation(GetObjectByTag("dan_spawn_droid2", 0));
	SetLockHeadFollowInDialog(oNPC, 1);
	DelayCommand(3.8, SetLockHeadFollowInDialog(oNPC, 0));
	AssignCommand(object5, ActionMoveToObject(oDan_party_move2, 1, 1.0));
	AssignCommand(object3, ActionMoveToObject(oDan_party_move1, 1, 1.0));
	DelayCommand(0.1, AssignCommand(oNPC, ActionMoveToObject(oDan_party_move0, 1, 1.0)));
	CreateObject(1, "dan_cut_zuulan", location1, 0);
	CreateObject(1, "dan_cut_droid1", location3, 0);
	CreateObject(1, "dan_cut_droid2", location5, 0);
}

