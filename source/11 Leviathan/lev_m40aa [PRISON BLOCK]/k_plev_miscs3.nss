void main() {
	object oLev40_wppicklock = GetObjectByTag("lev40_wppicklock", 0);
	object oNearestLev40_cell08 = GetNearestObjectByTag("lev40_cell08", GetObjectByTag("mission", 0), 1);
	object oMission = GetObjectByTag("mission", 0);
	AssignCommand(oMission, ActionMoveToObject(oLev40_wppicklock, 0, 0.5));
	AssignCommand(oMission, ActionPlayAnimation(11, 1.0, 2.0));
	DelayCommand(4.0, SignalEvent(oNearestLev40_cell08, EventUserDefined(2000)));
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
}

