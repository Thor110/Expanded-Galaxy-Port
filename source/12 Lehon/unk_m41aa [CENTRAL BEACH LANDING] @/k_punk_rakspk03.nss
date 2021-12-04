void main() {
	ActionPauseConversation();
	SetFacingPoint(GetPosition(GetObjectByTag("temp", 0)));
	ActionPlayAnimation(100, 1.0, 0.0);
	ActionWait(1.0);
	ActionResumeConversation();
	AssignCommand(GetObjectByTag("unk41_blackrak", 0), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("unk41_blackrak2", 0), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("unk41_blackrak3", 0), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("unk41_blackrak4", 0), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("unk41_rancor", 0), ActionMoveToObject(GetObjectByTag("unk41_sw41aabr", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("unk41_rancor", 0), ActionPlayAnimation(108, 1.0, 0.0));
	AssignCommand(GetObjectByTag("unk41_rancor2", 0), ActionPlayAnimation(108, 1.0, 0.0));
}

