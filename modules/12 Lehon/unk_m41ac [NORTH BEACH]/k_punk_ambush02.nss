void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_blk1", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_blk2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_blk3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_rancor01", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_rancor02", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	SetGlobalFadeOut(2.0, 1.0, 0.0, 0.0, 0.0);
	SetGlobalBoolean("Unk_Ambush_Temp", 0);
	ActionWait(3.0);
	ActionResumeConversation();
}

