void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	ActionMoveToObject(GetObjectByTag("onemove", 0), 0, 0.2);
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("pm1wp2", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("pm2wp2", 0)), 0));
	AssignCommand(GetObjectByTag("unk43_blk1", 0), ActionMoveToObject(GetObjectByTag("blk1move", 0), 0, 0.2));
	AssignCommand(GetObjectByTag("unk43_blk2", 0), ActionMoveToObject(GetObjectByTag("blk2move", 0), 0, 0.2));
	ActionWait(2.0);
	ActionResumeConversation();
}

