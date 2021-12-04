void main() {
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetObjectByTag("unk41_ithor01", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("ith1wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_ithor02", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("ith2wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_ithor02", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("ith3wp", 0)), 1));
	ActionWait(2.0);
	ActionResumeConversation();
}

