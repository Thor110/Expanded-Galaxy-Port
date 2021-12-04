void main() {
	object oK38a_door_locked = GetObjectByTag("k38a_door_locked", 0);
	ActionPauseConversation();
	AssignCommand(oK38a_door_locked, ActionCloseDoor(oK38a_door_locked));
	SetLocked(oK38a_door_locked, 1);
	ActionWait(2.0);
	ActionResumeConversation();
}

