void main() {
	object oEnd_door07 = GetObjectByTag("end_door07", 0);
	AssignCommand(oEnd_door07, ActionOpenDoor(oEnd_door07));
	ActionPauseConversation();
	ActionForceMoveToObject(oEnd_door07, 1, 1.0, 3.0);
	ActionResumeConversation();
}

