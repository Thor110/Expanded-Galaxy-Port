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
void sub3();
void sub2(string stringParam1, string stringParam2, object objectParam3);
void sub1(int intParam1, string stringParam2, location locationParam3);

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

void sub2(string stringParam1, string stringParam2, object objectParam3) {
	object object1 = GetObjectByTag(stringParam1, 0);
	object oPC = GetFirstPC();
	sub3();
	if ((GetIsObjectValid(object1) == 1)) {
		if ((oPC == GetPartyMemberByIndex(0))) {
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			object oNPC = GetPartyMemberByIndex(1);
			object object8 = GetPartyMemberByIndex(2);
			NoClicksFor(0.7);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			if ((GetIsObjectValid(objectParam3) == 1)) {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(objectParam3, 1)));
				AssignCommand(oPC, DelayCommand(0.4, SetFacingPoint(GetPosition(object1))));
			}
			else {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(object1, 1)));
			}
			AssignCommand(oNPC, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object8, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object1, ActionDoCommand(SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0)));
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
	}
}

void sub1(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void main() {
	int nGlobal = GetGlobalNumber("KOR_DUEL_NUM");
	nGlobal = (nGlobal + 1);
	SetGlobalNumber("KOR_DUEL_NUM", nGlobal);
	SetGlobalFadeOut(1.0, 3.0, 0.0, 0.0, 0.0);
	object oPC = GetFirstPC();
	object oK35_way_pcduel = GetObjectByTag("k35_way_pcduel", 0);
	object oK35_way_captive = GetObjectByTag("k35_way_captive", 0);
	AssignCommand(oPC, ActionJumpToObject(oK35_way_pcduel, 1));
	location location1 = GetLocation(oK35_way_captive);
	sub1(1, "kor35_captive5", location1);
	object oKor35_captive5 = GetObjectByTag("kor35_captive5", 0);
	SetMinOneHP(oKor35_captive5, 0);
	NoClicksFor(3.2);
	DelayCommand(3.0, sub2("kor35_captive5", "", OBJECT_INVALID));
	if ((nGlobal >= 3)) {
		object oKor35_sithduel = GetObjectByTag("kor35_sithduel", 0);
		object oK35_way_entrance = GetObjectByTag("k35_way_entrance", 0);
		AssignCommand(oKor35_sithduel, ActionMoveToObject(oK35_way_entrance, 1, 1.0));
		DelayCommand(10.0, DestroyObject(oKor35_sithduel, 0.0, 0, 0.0));
		AssignCommand(oKor35_sithduel, SetCommandable(0, OBJECT_SELF));
	}
	SetGlobalFadeIn(3.0, 1.0, 0.0, 0.0, 0.0);
}

