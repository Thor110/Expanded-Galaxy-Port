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
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1(float floatParam1);

void sub3() {
	RemovePartyMember(0);
	RemovePartyMember(1);
	RemovePartyMember(2);
	RemovePartyMember(3);
	RemovePartyMember(4);
	RemovePartyMember(5);
	RemovePartyMember(6);
	RemovePartyMember(7);
	RemovePartyMember(8);
}

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oNPC = GetPartyMemberByIndex(1);
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	talent talSpell = TalentSpell(29);
	sub1(3.0);
	if (GetIsImmune(oNPC, 6, OBJECT_INVALID)) {
		sub2("Party Member IMMUNE to Paralysis", 10, 10, 5.0);
	}
	else {
		sub2("Party Member not IMMUNE to Paralysis", 10, 10, 5.0);
	}
	sub3();
	ChangeToStandardFaction(oNPC, 5);
	SetPlotFlag(oNPC, 1);
	CancelCombat(oSta_45darthMalak);
	AssignCommand(oNPC, ClearAllActions());
	DelayCommand(0.2, AssignCommand(oSta_45darthMalak, ActionUseTalentOnObject(talSpell, oNPC)));
	DelayCommand(0.8, ApplyEffectToObject(2, EffectParalyze(), oNPC, 0.0));
	DelayCommand(0.90000004, ApplyEffectToObject(2, EffectVisualEffect(2008, 0), oNPC, 0.0));
	DelayCommand(1.0, SetDialogPlaceableCamera(46));
}

