void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	DestroyObject(GetObjectByTag("unk41_rancor", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_rancor2", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_blackrak", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_blackrak3", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_blackrak4", 0), 0.0, 0, 0.0);
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionWait(3.0);
	ActionResumeConversation();
}

