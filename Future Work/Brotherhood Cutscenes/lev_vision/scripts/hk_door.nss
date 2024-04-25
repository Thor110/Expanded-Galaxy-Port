void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	object oHk = GetObjectByTag("hk", 0);
	DelayCommand(0.8, AssignCommand(oSw_door_sith002, ActionOpenDoor(oSw_door_sith002)));
	ActionResumeConversation();
}

