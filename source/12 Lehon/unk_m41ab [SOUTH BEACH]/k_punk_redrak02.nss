void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	ActionWait(2.0);
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionMoveToObject(GetObjectByTag("rak1move", 0), 1, 0.2));
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ActionMoveToObject(GetObjectByTag("rak2move", 0), 1, 0.2));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ActionMoveToObject(GetObjectByTag("rak3move", 0), 1, 0.2));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	AssignCommand(GetObjectByTag("unk41_redrak5", 0), ActionMoveToObject(GetObjectByTag("rak5move", 0), 1, 0.2));
	AssignCommand(GetObjectByTag("unk41_redrak5", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	ActionWait(1.5);
	ActionResumeConversation();
}

