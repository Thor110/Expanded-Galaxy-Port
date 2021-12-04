void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oSw_door_sith004 = GetObjectByTag("sw_door_sith004", 0);
	DelayCommand(0.1, AssignCommand(oSw_door_sith004, ActionCloseDoor(oSw_door_sith004)));
	ActionResumeConversation();
}

