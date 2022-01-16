void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_blackrak4", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("rak1move", 0)))));
	ActionResumeConversation();
}

