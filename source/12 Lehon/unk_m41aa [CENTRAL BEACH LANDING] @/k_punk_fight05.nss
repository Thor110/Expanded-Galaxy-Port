void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1));
	ActionWait(4.0);
	SetGlobalFadeOut(3.0, 1.0, 0.0, 0.0, 0.0);
	ActionResumeConversation();
}

