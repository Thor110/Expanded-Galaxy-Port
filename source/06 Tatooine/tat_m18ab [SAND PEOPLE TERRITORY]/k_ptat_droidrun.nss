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
void sub5(int intParam1, string stringParam2, location locationParam3);
void sub4(object objectParam1, location locationParam2);
void sub3();
void sub2(object objectParam1, object objectParam2, object objectParam3);
void sub1(float floatParam1);

void sub5(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub4(object objectParam1, location locationParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	if ((GetCurrentHitPoints(objectParam1) < 1)) {
		ApplyEffectToObject(0, EffectResurrection(), objectParam1, 0.0);
		ApplyEffectToObject(0, EffectHeal(1), objectParam1, 0.0);
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToLocation(locationParam2));
}

void sub3() {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(int1);
	while (GetIsObjectValid(oNPC)) {
		if ((GetCurrentHitPoints(oNPC) < 1)) {
			ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
		}
		(int1++);
		oNPC = GetPartyMemberByIndex(int1);
	}
}

void sub2(object objectParam1, object objectParam2, object objectParam3) {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	sub3();
	if (GetIsObjectValid(oNPC)) {
		sub4(oNPC, GetLocation(objectParam1));
		AssignCommand(oNPC, SetFacing(GetFacing(objectParam1)));
	}
	if (GetIsObjectValid(object3)) {
		sub4(object3, GetLocation(objectParam2));
		DelayCommand(0.3, AssignCommand(object3, SetFacing(GetFacing(objectParam2))));
	}
	if (GetIsObjectValid(object5)) {
		sub4(object5, GetLocation(objectParam3));
		DelayCommand(0.3, AssignCommand(object5, SetFacing(GetFacing(objectParam3))));
	}
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	SetPartyLeader(0xFFFFFFFF);
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oVornsdroid = GetObjectByTag("vornsdroid", 0);
	object oTat_pc_run_start = GetObjectByTag("tat_pc_run_start", 0);
	object oTat_assoc1_run_start = GetObjectByTag("tat_assoc1_run_start", 0);
	object oTat_assoc2_run_start = GetObjectByTag("tat_assoc2_run_start", 0);
	location location1 = GetLocation(GetObjectByTag("tat_droid_run_start", 0));
	location location3 = GetLocation(GetObjectByTag("tat_pc_run", 0));
	location location5 = GetLocation(GetObjectByTag("tat_assoc1_run", 0));
	location location7 = GetLocation(GetObjectByTag("tat_assoc2_run", 0));
	location location9 = GetLocation(GetObjectByTag("tat_droid_run", 0));
	location location11 = GetLocation(GetObjectByTag("tat_vorn_spawn", 0));
	location location13 = GetLocation(GetObjectByTag("tat_krayt_spawn", 0));
	location location15 = GetLocation(GetObjectByTag("tat_cut_fire_wp", 0));
	location location17 = GetLocation(GetObjectByTag("tat_rubble_wp", 0));
	sub1(5.5);
	sub2(oTat_pc_run_start, oTat_assoc1_run_start, oTat_assoc2_run_start);
	CreateObject(1, "vorn", location11, 0);
	CreateObject(1, "tat_dead_krayt", location13, 0);
	CreateObject(64, "tat_cut_fire", location15, 0);
	CreateObject(64, "tat_rubble", location17, 0);
	DelayCommand(6.0, DestroyObject(oVornsdroid, 0.0, 0, 0.0));
	DelayCommand(0.0, sub5(1, "vornsdroid2", location1));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("vornsdroid2", 0), ActionMoveToLocation(location9, 1)));
	DelayCommand(0.8, AssignCommand(oPC, ActionMoveToLocation(location3, 1)));
	DelayCommand(1.0, AssignCommand(oNPC, ActionMoveToLocation(location5, 1)));
	DelayCommand(1.2, AssignCommand(object5, ActionMoveToLocation(location7, 1)));
}

