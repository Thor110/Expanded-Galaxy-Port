void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk43_rancor1", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk43_rancor2", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk43_rancor3", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk43_rancor4", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk43_rancor1", 0), ActionMoveToObject(GetObjectByTag("rancor1wp", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("unk43_rancor2", 0), ActionMoveToObject(GetObjectByTag("rancor2wp", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("unk43_rancor3", 0), ActionMoveToObject(GetObjectByTag("rancor3wp", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("unk43_rancor4", 0), ActionMoveToObject(GetObjectByTag("rancor4wp", 0), 1, 1.0));
	ActionMoveToObject(GetObjectByTag("onewp", 0), 1, 1.0);
	ActionResumeConversation();
}

