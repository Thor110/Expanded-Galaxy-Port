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
void sub2(float floatParam1);
void sub1(object objectParam1, location locationParam2);

void sub2(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
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
	int int1;
	object oNPC;
	object oLev40_wpconfc;
	AssignCommand(GetObjectByTag("lev40_blastdoorb", 0), ActionOpenDoor(OBJECT_SELF));
	int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		oNPC = GetPartyMemberByIndex(int1);
		switch (int1) {
			case 0:
				oLev40_wpconfc = GetObjectByTag("lev40_wpconfa", 0);
				break;
			case 1:
				oLev40_wpconfc = GetObjectByTag("lev40_wpconfb", 0);
				break;
			default:
				oLev40_wpconfc = GetObjectByTag("lev40_wpconfc", 0);
				break;
		}
		sub1(oNPC, GetLocation(oLev40_wpconfc));
		(int1++);
	}
	sub2(5.0);
	DelayCommand(1.0, ActionMoveToObject(GetObjectByTag("lev40_wpmalak", 0), 0, 1.0));
}

