void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk43_theone", 0), ActionPlayAnimation(11, 1.0, 2.0));
	AssignCommand(GetObjectByTag("unk43_theone", 0), ActionWait(2.0));
	AssignCommand(GetObjectByTag("unk43_theone", 0), ActionResumeConversation());
}

