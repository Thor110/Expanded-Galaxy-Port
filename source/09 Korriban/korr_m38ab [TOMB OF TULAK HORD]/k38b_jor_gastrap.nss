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
void sub3(object objectParam1, int intParam2);
void sub2(int intParam1);
void sub1(object objectParam1, location locationParam2);

void sub3(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

void sub2(int intParam1) {
	sub3(OBJECT_SELF, intParam1);
}

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
	SetGlobalFadeOut(1.0, 4.0, 0.0, 0.0, 0.0);
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object oK38b_way_player1 = GetObjectByTag("k38b_way_player1", 0);
	location location1 = GetLocation(oK38b_way_player1);
	object object7 = GetPartyMemberByIndex(2);
	object oK38b_way_player2 = GetObjectByTag("k38b_way_player2", 0);
	location location3 = GetLocation(oK38b_way_player2);
	object oK38b_way_player = GetObjectByTag("k38b_way_player", 0);
	object oK38b_way_jorak = GetObjectByTag("k38b_way_jorak", 0);
	location location5 = GetLocation(oK38b_way_player);
	location location7 = GetLocation(oK38b_way_jorak);
	object oKor38b_jorakuln = GetObjectByTag("kor38b_jorakuln", 0);
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(1.0, AssignCommand(oPC, ActionJumpToLocation(location5)));
	ClearAllActions();
	sub1(oKor38b_jorakuln, location7);
	AssignCommand(oNPC, ClearAllEffects());
	AssignCommand(object7, ClearAllEffects());
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(object7, ClearAllActions());
	DelayCommand(1.0, sub1(oNPC, location1));
	DelayCommand(1.0, sub1(object7, location3));
	sub2(1);
	SetGlobalBoolean("KOR_JORAK_MEET", 1);
	SetGlobalFadeIn(4.0, 1.0, 0.0, 0.0, 0.0);
	object oKor38b_gascloud = GetObjectByTag("kor38b_gascloud", 0);
	object oKor38b_gascloud1 = GetObjectByTag("kor38b_gascloud1", 0);
	object oKor38b_gascloud2 = GetObjectByTag("kor38b_gascloud2", 0);
	object oKor38b_gascloud3 = GetObjectByTag("kor38b_gascloud3", 0);
	DestroyObject(oKor38b_gascloud, 0.0, 0, 0.0);
	DestroyObject(oKor38b_gascloud1, 0.0, 0, 0.0);
	DestroyObject(oKor38b_gascloud2, 0.0, 0, 0.0);
	DestroyObject(oKor38b_gascloud3, 0.0, 0, 0.0);
}

