void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oWP = GetWaypointByTag("");
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	AssignCommand(oNPC, ActionMoveToObject(oWP, 0, 1.0));
	DelayCommand(3.0, ActionResumeConversation());
}

