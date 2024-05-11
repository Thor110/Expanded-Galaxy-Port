void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("yav47_trand01", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("yav50_trandflee", 0)), 1));
	AssignCommand(GetObjectByTag("yav47_trand02", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("yav50_trandflee", 0)), 1));
	ActionWait(2.0);
	ActionResumeConversation();
}

