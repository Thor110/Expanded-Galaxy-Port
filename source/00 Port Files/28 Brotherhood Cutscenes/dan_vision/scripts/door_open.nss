void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oSuperdoor = GetObjectByTag("Superdoor", 0);
	AssignCommand(oSuperdoor, SetLocked(oSuperdoor, 0));
	AssignCommand(oSuperdoor, ActionOpenDoor(oSuperdoor));
	ActionResumeConversation();
}

