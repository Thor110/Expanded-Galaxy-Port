void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	location location1 = GetLocation(GetObjectByTag("sta_pc_start", 0));
	object oSta_way_player = GetObjectByTag("sta_way_player", 0);
	ActionWait(2.5);
	ActionResumeConversation();
}

