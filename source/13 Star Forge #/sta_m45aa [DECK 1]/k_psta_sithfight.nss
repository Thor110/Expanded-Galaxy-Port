// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	sub1(2.1);
	object oSta_Jedi002 = GetObjectByTag("sta_Jedi002", 0);
	object oSta_Jedi003 = GetObjectByTag("sta_Jedi003", 0);
	object oSta_Jedi004 = GetObjectByTag("sta_Jedi004", 0);
	object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
	object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
	object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
	object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
	object oSta_way_sithjed2 = GetObjectByTag("sta_way_sithjed2", 0);
	object oSta_way_sithjed3 = GetObjectByTag("sta_way_sithjed3", 0);
	object oSta_way_sithjed4 = GetObjectByTag("sta_way_sithjed4", 0);
	object oSta_way_sithjedi = GetObjectByTag("sta_way_sithjedi", 0);
	object oSta_way_jed5 = GetObjectByTag("sta_way_jed5", 0);
	object oSta_way_jed6 = GetObjectByTag("sta_way_jed6", 0);
	object oSta_way_jed7 = GetObjectByTag("sta_way_jed7", 0);
	AssignCommand(oSta45a_Sith01, JumpToLocation(GetLocation(oSta_way_sithjedi)));
	AssignCommand(oSta45a_Sith02, JumpToLocation(GetLocation(oSta_way_sithjed2)));
	AssignCommand(oSta45a_Sith03, JumpToLocation(GetLocation(oSta_way_sithjed3)));
	AssignCommand(oSta45a_Sith04, JumpToLocation(GetLocation(oSta_way_sithjed4)));
	AssignCommand(oSta_Jedi002, JumpToLocation(GetLocation(oSta_way_jed5)));
	AssignCommand(oSta_Jedi003, JumpToLocation(GetLocation(oSta_way_jed6)));
	AssignCommand(oSta_Jedi004, JumpToLocation(GetLocation(oSta_way_jed7)));
	ChangeToStandardFaction(oSta45a_Sith02, 2);
	ChangeToStandardFaction(oSta45a_Sith03, 2);
	ChangeToStandardFaction(oSta45a_Sith04, 2);
	AssignCommand(oSta_Jedi002, ActionAttack(oSta45a_Sith02, 0));
	AssignCommand(oSta_Jedi003, ActionAttack(oSta45a_Sith03, 0));
	AssignCommand(oSta_Jedi004, ActionAttack(oSta45a_Sith04, 0));
	AssignCommand(oSta45a_Sith02, ActionAttack(oSta_Jedi002, 0));
	AssignCommand(oSta45a_Sith03, ActionAttack(oSta_Jedi003, 0));
	AssignCommand(oSta45a_Sith04, ActionAttack(oSta_Jedi004, 0));
}

