// Prototypes
void sub3();
//void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
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
  /*//still not stunned
	RemovePartyMember(9);
	RemovePartyMember(10);
	RemovePartyMember(11);
  */
}
/*
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oNPC = GetPartyMemberByIndex(1);
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	talent talSpell = TalentSpell(29);
	sub1(3.0);
	/*if (GetIsImmune(oNPC, 6, OBJECT_INVALID)) {
		sub2("Party Member IMMUNE to Paralysis", 10, 10, 5.0);
	}
	else {
		sub2("Party Member not IMMUNE to Paralysis", 10, 10, 5.0);
	}*/
	sub3();
	ChangeToStandardFaction(oNPC, 5);
	SetPlotFlag(oNPC, 1);
	CancelCombat(oSta_45darthMalak);
	AssignCommand(oNPC, ClearAllActions());
	DelayCommand(0.2, AssignCommand(oSta_45darthMalak, ActionUseTalentOnObject(talSpell, oNPC)));
	DelayCommand(0.8, ApplyEffectToObject(2, EffectParalyze(), oNPC, 0.0));
	DelayCommand(0.90000004, ApplyEffectToObject(2, EffectVisualEffect(2008, 0), oNPC, 0.0));
	DelayCommand(1.0, SetDialogPlaceableCamera(46));
  // second companion still not stunned
  /*
	object oNPC2 = GetPartyMemberByIndex(2);
	DelayCommand(0.2, AssignCommand(oSta_45darthMalak, ActionUseTalentOnObject(talSpell, oNPC2)));
	DelayCommand(0.8, ApplyEffectToObject(2, EffectParalyze(), oNPC2, 0.0));
  */
}

