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
void sub4(object objectParam1, location locationParam2);
void sub3();
void sub2(object objectParam1, object objectParam2, object objectParam3);
void sub1(float floatParam1);

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
	object oNearestBP_JUMP0_WP = GetNearestObjectByTag("BP_JUMP0_WP", OBJECT_SELF, 1);
	object oNearestBP_JUMP1_WP = GetNearestObjectByTag("BP_JUMP1_WP", OBJECT_SELF, 1);
	object oNearestBP_JUMP2_WP = GetNearestObjectByTag("BP_JUMP2_WP", OBJECT_SELF, 1);
	object oNPC = GetPartyMemberByIndex(0);
	object object9 = GetPartyMemberByIndex(1);
	object object11 = GetPartyMemberByIndex(2);
	location location1 = GetLocation(GetNearestObjectByTag("BP_MOVE0_WP", OBJECT_SELF, 1));
	location location3 = GetLocation(GetNearestObjectByTag("BP_MOVE1_WP", OBJECT_SELF, 1));
	location location5 = GetLocation(GetNearestObjectByTag("BP_MOVE2_WP", OBJECT_SELF, 1));
	sub1(4.0);
	SetPartyLeader(0xFFFFFFFF);
	AssignCommand(oNPC, ClearAllActions());
	if (GetIsObjectValid(object9)) {
		AssignCommand(object9, ClearAllActions());
	}
	if (GetIsObjectValid(object11)) {
		AssignCommand(object11, ClearAllActions());
	}
	sub2(oNearestBP_JUMP0_WP, oNearestBP_JUMP1_WP, oNearestBP_JUMP2_WP);
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(location1, 0)));
	DelayCommand(0.90000004, AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(location3, 0)));
	DelayCommand(1.5, AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(location5, 0)));
}

