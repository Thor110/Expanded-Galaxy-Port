void main() {
	SetPartyLeader((-1));
	ActionPauseConversation();
	ActionWait(3.0);
	location location1 = GetLocation(GetObjectByTag("lev_jump_wp_pc", 0));
	location location3 = GetLocation(GetObjectByTag("lev_jump_wp_carth", 0));
	location location5 = GetLocation(GetObjectByTag("lev_jump_wp_bastila", 0));
	RemovePartyMember(2);
	RemovePartyMember(0);
	AssignCommand(GetFirstPC(), JumpToLocation(location1));
	AssignCommand(GetObjectByTag("Carth", 0), JumpToLocation(location3));
	AssignCommand(GetObjectByTag("Bastila", 0), JumpToLocation(location5));
	ActionResumeConversation();
}

