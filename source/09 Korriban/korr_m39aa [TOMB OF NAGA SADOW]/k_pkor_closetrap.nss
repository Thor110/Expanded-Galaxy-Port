void main() {
	ActionPauseConversation();
	object oK39_door_trap1 = GetObjectByTag("k39_door_trap1", 0);
	AssignCommand(oK39_door_trap1, ActionCloseDoor(oK39_door_trap1));
	SetLocked(oK39_door_trap1, 1);
	object oK39_door_trap2 = GetObjectByTag("k39_door_trap2", 0);
	AssignCommand(oK39_door_trap2, ActionCloseDoor(oK39_door_trap2));
	SetLocked(oK39_door_trap2, 1);
	ActionWait(2.0);
	ActionResumeConversation();
}

