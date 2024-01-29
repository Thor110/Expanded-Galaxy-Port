void main() {
	SetLockOrientationInDialog(GetObjectByTag("end_trask", 0), 1);
	object oEnd_door07 = GetObjectByTag("end_door07", 0);
	AssignCommand(oEnd_door07, ActionOpenDoor(oEnd_door07));
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

