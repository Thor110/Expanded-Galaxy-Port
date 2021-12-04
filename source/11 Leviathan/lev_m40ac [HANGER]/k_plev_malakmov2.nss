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
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DelayCommand(0.2, MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 8));
	DelayCommand(0.2, MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 8));
	DelayCommand(0.5, MusicBackgroundPlay(GetArea(OBJECT_SELF)));
	object oDarthMalak400 = GetObjectByTag("DarthMalak400", 0);
	int int1;
	object object7;
	object object8;
	SetPartyLeader(0xFFFFFFFF);
	DelayCommand(0.2, AssignCommand(GetObjectByTag("lev40_blastdoorb", 0), ActionOpenDoor(OBJECT_SELF)));
	object oLev40_wpconfa = GetObjectByTag("lev40_wpconfa", 0);
	object oLev40_wpconfb = GetObjectByTag("lev40_wpconfb", 0);
	object oLev40_wpconfc = GetObjectByTag("lev40_wpconfc", 0);
	AssignCommand(GetFirstPC(), JumpToLocation(GetLocation(oLev40_wpconfa)));
	sub1(GetObjectByTag("Carth", 0), GetLocation(oLev40_wpconfc));
	sub1(GetObjectByTag("Bastila", 0), GetLocation(oLev40_wpconfb));
	DelayCommand(2.0, AssignCommand(GetFirstPC(), JumpToLocation(GetLocation(oLev40_wpconfa))));
	DelayCommand(2.0, sub1(GetObjectByTag("Carth", 0), GetLocation(oLev40_wpconfc)));
	DelayCommand(2.0, sub1(GetObjectByTag("Bastila", 0), GetLocation(oLev40_wpconfb)));
	sub2(4.5);
	DelayCommand(1.0, AssignCommand(GetObjectByTag("DarthMalak400", 0), ActionMoveToObject(GetObjectByTag("lev40_wpmalak", 0), 0, 1.0)));
	object oCarth = GetObjectByTag("Carth", 0);
	object oBastila = GetObjectByTag("Bastila", 0);
	CreateItemOnObject("bast_temp_saber", oBastila, 1);
	DelayCommand(0.5, AssignCommand(oBastila, ActionEquipItem(GetItemPossessedBy(oBastila, "bast_temp_saber"), 4, 1)));
	if ((GetItemInSlot(4, oCarth) == OBJECT_INVALID)) {
		AssignCommand(oCarth, ActionEquipMostDamagingRanged(OBJECT_INVALID));
	}
}

