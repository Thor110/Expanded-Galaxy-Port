void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionMoveToObject(GetObjectByTag("eldermove", 0), 0, 2.0));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ActionMoveToObject(GetObjectByTag("eldermove", 0), 0, 2.0));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ActionMoveToObject(GetObjectByTag("eldermove", 0), 0, 2.0));
	AssignCommand(GetObjectByTag("unk41_redrak5", 0), ActionMoveToObject(GetObjectByTag("eldermove", 0), 0, 2.0));
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("eldermove", 0)), 0));
	SetGlobalBoolean("UNK_REDTALK", 1);
	ActionWait(2.0);
	ActionResumeConversation();
}

