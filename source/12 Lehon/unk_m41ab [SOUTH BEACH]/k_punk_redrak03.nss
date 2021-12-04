void main() {
	ActionPauseConversation();
	SetFacingPoint(GetPosition(GetPCSpeaker()));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	ActionResumeConversation();
}

