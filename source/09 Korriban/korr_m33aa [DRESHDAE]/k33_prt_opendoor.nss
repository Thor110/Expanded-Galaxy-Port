void main() {
	object oK33a_dor_port = GetObjectByTag("k33a_dor_port", 0);
	ActionPauseConversation();
	ActionDoCommand(SetLocked(oK33a_dor_port, 0));
	ActionDoCommand(AssignCommand(oK33a_dor_port, ActionOpenDoor(oK33a_dor_port)));
	ActionDoCommand(SetGlobalBoolean("KOR_PORT_OPEN", 1));
	ActionResumeConversation();
	SetGlobalBoolean("K_KOR_PORT_FEE", 1);
}

