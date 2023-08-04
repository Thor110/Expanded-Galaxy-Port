void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_ithor01", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("ithleave", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_ithor02", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("ithleave", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_ithor03", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("ithleave", 0)), 1));
	ActionWait(4.0);
	ActionResumeConversation();
}

