void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("rakspawn1", 0)), 0);
	AssignCommand(GetObjectByTag("unk42_redelder2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rakspawn1", 0)), 0));
	AssignCommand(GetObjectByTag("unk42_redelder3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rakspawn1", 0)), 0));
	SetGlobalFadeOut(2.5, 1.0, 0.0, 0.0, 0.0);
	ActionWait(2.0);
	ActionResumeConversation();
}

