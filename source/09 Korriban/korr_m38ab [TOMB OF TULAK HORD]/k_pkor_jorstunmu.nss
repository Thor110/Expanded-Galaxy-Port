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
void sub1(object objectParam1, location locationParam2);

void sub1(object objectParam1, location locationParam2) {
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

void main() {
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	object oPC = GetFirstPC();
	object oKor38b_mekel = GetObjectByTag("kor38b_mekel", 0);
	object oNPC = GetPartyMemberByIndex(1);
	object oK38b_way_player1 = GetObjectByTag("k38b_way_player1", 0);
	location location1 = GetLocation(oK38b_way_player1);
	object object11 = GetPartyMemberByIndex(2);
	object oK38b_way_player2 = GetObjectByTag("k38b_way_player2", 0);
	location location3 = GetLocation(oK38b_way_player2);
	ActionPauseConversation();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionPlayAnimation(22, 1.0, 30.0));
	if (GetIsObjectValid(oKor38b_mekel)) {
		AssignCommand(oKor38b_mekel, ClearAllActions());
		AssignCommand(oKor38b_mekel, ActionPlayAnimation(22, 1.0, 30.0));
	}
	if (GetIsObjectValid(oNPC)) {
		sub1(oNPC, location1);
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionPlayAnimation(22, 1.0, 30.0));
	}
	if (GetIsObjectValid(object11)) {
		sub1(object11, location3);
		AssignCommand(object11, ClearAllActions());
		AssignCommand(object11, ActionPlayAnimation(22, 1.0, 30.0));
	}
	ActionResumeConversation();
}

